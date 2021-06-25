const fs = require('fs');

const loader = require('@assemblyscript/loader');

const imports = { /* imports go here */ };
const wasmModule = loader.instantiateSync(
  // Use untouched.wasm for development, use optimized.wasm for distribution/external use
  fs.readFileSync('build/untouched.wasm'),
  imports
);

// Import the helper functions
const wasm = wasmModule.exports;
const __pin = wasm.__pin;
const __unpin = wasm.__unpin;
const __newArray = wasm.__newArray;
const __getArray = wasm.__getArray;
const __newString = wasm.__newString;
const __getString = wasm.__getString;
const __new = wasm.__new;

/**
 * JS wrapper for the searchsorted() from WASM, which finds the index where
 * inserting `value` into `sorted` would keep `sorted` in order.
 * @param {[number]} sorted a sorted array (ascending order)
 * @param {number} value a number to insert into `sorted`
 * @returns index to insert `value` ito `sorted`
 */
const __searchSortedLowerIndex = (sorted, value) => {
  let xPtr = __pin(__newArray(wasm.Float64Array_ID, sorted));
  let index = wasm.searchSortedLowerIndex(xPtr, value);
  __unpin(xPtr);
  return index;
};

/**
 * Convert a JS string array to pointer of string pointers in AS
 * @param {[string]} strings String array
 * @returns Pointer to the array of string pointers
 */
const __createStringArray = (strings) => {
  let stringPtr = strings.map((n) => __newString(n));
  let stringArrayPtr = __newArray(wasm.StringArray_ID, stringPtr);
  return stringArrayPtr;
};

class EBM {
  // Store an instance of WASM EBM
  ebm;

  constructor(featureData, sampleData) {
    this.featureData = featureData;
    this.sampleData = sampleData;

    /**
     * Pre-process the feature data
     *
     * Feature data includes the main effect and also the interaction effect, and
     * we want to split those two.
     */

    // Step 1: For the main effect, we only need bin edges and scores stored with the same order
    // of `featureNames` and `featureTypes`.

    // Create an index map from feature name to their index in featureData
    let featureDataNameMap = new Map();
    featureData.features.forEach((d, i) => featureDataNameMap.set(d.name, i));

    let sampleDataNameMap = new Map();
    sampleData.featureNames.forEach((d, i) => sampleDataNameMap.set(d, i));

    // Create two 2D arrays for binEdge ([feature, bin]) and score ([feature, bin]) respectively
    // Need to separate continuous features from categorical features because we
    // cannot mix float and string in a 2D array
    let contBinEdges = [];
    let contScores = [];
    let catBinEdges = [];
    let catScores = [];

    for (let i = 0; i < sampleData.featureNames.length; i++) {
      let curName = sampleData.featureNames[i];
      let curIndex = featureDataNameMap.get(curName);

      let curScore = featureData.features[curIndex].additive.slice();
      let curBinEdge;

      if (sampleData.featureTypes[i] === 'categorical') {
        curBinEdge = featureData.features[curIndex].binLabel.slice();
        curBinEdge = curBinEdge.map((d) => __newString(d));

        // Pin the inner 1D arrays
        let curBinEdgePtr = __newArray(wasm.StringArray_ID, curBinEdge);
        __pin(curBinEdgePtr);

        let curScorePtr = __newArray(wasm.Float64Array_ID, curScore);
        __pin(curScorePtr);

        catBinEdges.push(curBinEdgePtr);
        catScores.push(curScorePtr);
      } else {
        curBinEdge = featureData.features[curIndex].binEdge.slice(0, -1);

        // Pin the inner 1D arrays
        let curBinEdgePtr = __newArray(wasm.Float64Array_ID, curBinEdge);
        __pin(curBinEdgePtr);

        let curScorePtr = __newArray(wasm.Float64Array_ID, curScore);
        __pin(curScorePtr);

        contBinEdges.push(curBinEdgePtr);
        contScores.push(curScorePtr);
      }
    }

    // Pin the 2D arrays
    const contBinEdgesPtr = __newArray(wasm.Float64Array2D_ID, contBinEdges);
    __pin(contBinEdgesPtr);
    const contScoresPtr = __newArray(wasm.Float64Array2D_ID, contScores);
    __pin(contScoresPtr);

    const catBinEdgesPtr = __newArray(wasm.StringArray2D_ID, catBinEdges);
    __pin(catBinEdgesPtr);
    const catScoresPtr = __newArray(wasm.Float64Array2D_ID, catScores);
    __pin(catScoresPtr);

    // Step 2: For the interaction effect, we want to store the feature indexes and the score
    let interactionIndexes = [];

    let featureNamesPtr = __createStringArray(sampleData.featureNames);
    let featureTypesPtr = __createStringArray(sampleData.featureTypes);

    this.ebm = wasm.__EBM(featureNamesPtr, featureTypesPtr, contBinEdgesPtr,
      contScoresPtr, catBinEdgesPtr, catScoresPtr
    );
    __pin(this.ebm);
  }

  printData() {

    let name = this.ebm.printName();
    console.log(__getString(name));

    let binEdge = this.ebm.printBinEdge();
    console.log(__getArray(binEdge));

  }
}

module.exports = wasmModule.exports;

// Add new functions
module.exports.__searchSortedLowerIndex = __searchSortedLowerIndex;
module.exports.EBM = EBM;
