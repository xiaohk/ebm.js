'use strict';

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
  __pin(stringArrayPtr);
  return stringArrayPtr;
};

class EBM {
  // Store an instance of WASM EBM
  ebm;

  constructor(featureData, sampleData) {
    // this.featureData = featureData;
    // this.sampleData = sampleData;

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

    let featureNamesPtr = __createStringArray(sampleData.featureNames);
    let featureTypesPtr = __createStringArray(sampleData.featureTypes);

    // Create two 2D arrays for binEdge ([feature, bin]) and score ([feature, bin]) respectively
    // We mix continuous and categorical together (assume the categorical features
    // have been encoded)
    let binEdges = [];
    let scores = [];

    // This loop won't encounter interaction terms
    for (let i = 0; i < sampleData.featureNames.length; i++) {
      let curName = sampleData.featureNames[i];
      let curIndex = featureDataNameMap.get(curName);

      let curScore = featureData.features[curIndex].additive.slice();
      let curBinEdge;

      if (sampleData.featureTypes[i] === 'categorical') {
        curBinEdge = featureData.features[curIndex].binLabel.slice();
      } else {
        curBinEdge = featureData.features[curIndex].binEdge.slice(0, -1);
      }

      // Pin the inner 1D arrays
      let curBinEdgePtr = __newArray(wasm.Float64Array_ID, curBinEdge);
      __pin(curBinEdgePtr);

      let curScorePtr = __newArray(wasm.Float64Array_ID, curScore);
      __pin(curScorePtr);

      binEdges.push(curBinEdgePtr);
      scores.push(curScorePtr);
    }

    // Pin the 2D arrays
    const binEdgesPtr = __newArray(wasm.Float64Array2D_ID, binEdges);
    __pin(binEdgesPtr);
    const scoresPtr = __newArray(wasm.Float64Array2D_ID, scores);
    __pin(scoresPtr);

    /**
     * Step 2: For the interaction effect, we want to store the feature
     * indexes and the score.
     *
     * Here we store 3D F64 arrays of names, edges, and scores
     */
    let interactionNames = [];
    let interactionScores = [];
    let interactionBinEdges = [];

    featureData.features.forEach((d) => {
      if (d.type === 'interaction') {
        // Parse the feature name
        let name1 = d.name1;
        let name2 = d.name2;

        let curNamesPtr = __createStringArray([name1, name2]);
        interactionNames.push(curNamesPtr);

        // Collect two bin edges
        let binEdge1Ptr = __newArray(wasm.Float64Array_ID, d.binLabel1);
        let binEdge2Ptr = __newArray(wasm.Float64Array_ID, d.binLabel2);
        __pin(binEdge1Ptr);
        __pin(binEdge2Ptr);

        let curBinEdgesPtr = __newArray(wasm.Float64Array2D_ID, [binEdge1Ptr, binEdge2Ptr]);
        __pin(curBinEdgesPtr);

        interactionBinEdges.push(curBinEdgesPtr);

        // Add the scores
        let curScore2D = d.additive.map((a) => {
          let aPtr = __newArray(wasm.Float64Array_ID, a);
          __pin(aPtr);
          return aPtr;
        });
        let curScore2DPtr = __newArray(wasm.Float64Array2D_ID, curScore2D);
        __pin(curScore2DPtr);
        interactionScores.push(curScore2DPtr);
      }
    });

    // Create 3D arrays
    let interactionNamesPtr = __newArray(wasm.StringArray2D_ID, interactionNames);
    let interactionBinEdgesPtr = __newArray(wasm.Float64Array3D_ID, interactionBinEdges);
    let interactionScoresPtr = __newArray(wasm.Float64Array3D_ID, interactionScores);

    __pin(interactionNamesPtr);
    __pin(interactionBinEdgesPtr);
    __pin(interactionScoresPtr);

    /**
     * Step 3: Pass the sample data to WASM. We directly transfer this 2D float
     * array to WASM (assume categorical features are encoded already)
     */
    let samples = sampleData.samples.map(d => {
      let curPtr = __newArray(wasm.Float64Array_ID, d);
      __pin(curPtr);
      return curPtr;
    });
    let samplesPtr = __newArray(wasm.Float64Array2D_ID, samples);
    __pin(samplesPtr);

    this.ebm = wasm.__EBM(
      featureNamesPtr,
      featureTypesPtr,
      binEdgesPtr,
      scoresPtr,
      interactionNamesPtr,
      interactionBinEdgesPtr,
      interactionScoresPtr,
      samplesPtr,
      featureData.intercept
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
