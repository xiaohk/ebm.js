const fs = require('fs');

const loader = require('@assemblyscript/loader');
const ConsoleImport = require('as-console/imports');

const Console = new ConsoleImport();

const imports = { ...Console.wasmImports };
const wasmModule = loader.instantiateSync(
  // Use untouched.wasm for development, use optimized.wasm for distribution/external use
  fs.readFileSync('build/untouched.wasm'),
  imports
);

Console.wasmExports = wasmModule.exports;

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
  let stringPtrs = strings.map(str => __pin(__newString(str)));
  let stringArrayPtr = __pin(__newArray(wasm.StringArray_ID, stringPtrs));
  stringPtrs.forEach(ptr => __unpin(ptr));

  return stringArrayPtr;
};

/**
 * Utility function to free a 2D array
 * @param {[[object]]} array2d 2D array
 */
const __unpin2DArray = (array2d) => {
  for (let i = 0; i < array2d.length; i++) {
    __unpin(array2d[i]);
  }
  __unpin(array2d);
};

/**
 * Utility function to free a 3D array
 * @param {[[[object]]]} array2d 3D array
 */
const __unpin3DArray = (array3d) => {
  for (let i = 0; i < array3d.length; i++) {
    for (let j = 0; j < array3d[i].length; j++) {
      __unpin(array3d[i][j]);
    }
    __unpin(array3d[i]);
  }
  __unpin(array3d);
};

class EBM {
  // Store an instance of WASM EBM
  ebm;

  constructor(featureData, sampleData, editingFeature, isClassification) {

    // Store values for JS object
    this.isClassification = isClassification;

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

    let editingFeatureIndex = sampleData.featureNames.findIndex((d) => d === editingFeature);

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
     * Here we store arrays of indexes(2D), edges(3D), and scores(3D)
     */
    let interactionIndexes = [];
    let interactionScores = [];
    let interactionBinEdges = [];

    featureData.features.forEach((d) => {
      if (d.type === 'interaction') {
        // Parse the feature name
        let index1 = sampleData.featureNames.indexOf(d.name1);
        let index2 = sampleData.featureNames.indexOf(d.name2);

        let curIndexesPtr = __newArray(wasm.Int32Array_ID, [index1, index2]);
        __pin(curIndexesPtr);
        interactionIndexes.push(curIndexesPtr);

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
    let interactionIndexesPtr = __newArray(wasm.Int32Array2D_ID, interactionIndexes);
    let interactionBinEdgesPtr = __newArray(wasm.Float64Array3D_ID, interactionBinEdges);
    let interactionScoresPtr = __newArray(wasm.Float64Array3D_ID, interactionScores);

    __pin(interactionIndexesPtr);
    __pin(interactionBinEdgesPtr);
    __pin(interactionScoresPtr);

    /**
     * Step 3: Pass the sample data to WASM. We directly transfer this 2D float
     * array to WASM (assume categorical features are encoded already)
     */
    let samples = sampleData.samples.map((d) => {
      let curPtr = __newArray(wasm.Float64Array_ID, d);
      __pin(curPtr);
      return curPtr;
    });

    let samplesPtr = __newArray(wasm.Float64Array2D_ID, samples);
    __pin(samplesPtr);

    let labelsPtr = __newArray(wasm.Float64Array_ID, sampleData.labels);
    __pin(labelsPtr);

    /**
     * Step 4: Initialize the EBM in WASM
     */
    this.ebm = wasm.__EBM(
      featureNamesPtr,
      featureTypesPtr,
      binEdgesPtr,
      scoresPtr,
      featureData.intercept,
      interactionIndexesPtr,
      interactionBinEdgesPtr,
      interactionScoresPtr,
      samplesPtr,
      labelsPtr,
      editingFeatureIndex,
      isClassification
    );
    __pin(this.ebm);

    /**
     * Step 5: free the arrays created to communicate with WASM
     */
    __unpin(labelsPtr);
    __unpin2DArray(samplesPtr);
    __unpin3DArray(interactionScoresPtr);
    __unpin3DArray(interactionBinEdgesPtr);
    __unpin2DArray(interactionIndexesPtr);
    __unpin2DArray(scoresPtr);
    __unpin2DArray(binEdgesPtr);
    __unpin(featureTypesPtr);
    __unpin(featureNamesPtr);
  }

  printData() {

    let namePtr = this.ebm.printName();
    let name = __getString(namePtr);
    console.log('Editing: ', name);

  }

  getPrediction() {
    return __getArray(this.ebm.predLabels);
  }

  updateModel(changedBinIndexes, changedScores) {
    let changedBinIndexesPtr = __newArray(wasm.Float64Array_ID, changedBinIndexes);
    let changedScoresPtr = __newArray(wasm.Float64Array_ID, changedScores);

    __pin(changedBinIndexesPtr);
    __pin(changedScoresPtr);

    this.ebm.updateModel(changedBinIndexesPtr, changedScoresPtr);

    __unpin(changedBinIndexesPtr);
    __unpin(changedScoresPtr);
  }

  getMetrics() {

    /**
     * (1) regression: [[[RMSE, MAE]]]
     * (2) binary classification: [roc 2D points, PR 2D points, [confusion matrix 1D],
     *  [[accuracy, roc auc, average precision]]]
     */

    // Unpack the return value from getMetrics()
    let metrics = {};
    if (!this.isClassification) {
      let result3D = __getArray(this.ebm.getMetrics());
      let result3DPtr = __pin(result3D);

      let result2D = __getArray(result3D[0]);
      let result2DPtr = __pin(result2D);

      let result1D = __getArray(result2D[0]);
      let result1DPtr = __pin(result1D);

      metrics.rmse = result1D[0];
      metrics.mae = result1D[1];

      __unpin(result1DPtr);
      __unpin(result2DPtr);
      __unpin(result3DPtr);
    } else {
      // Unpack ROC curves
      let result3D = __getArray(this.ebm.getMetrics());
      let result3DPtr = __pin(result3D);

      let result1DPtrs = [];
      let roc2D = __getArray(result3D[0].map(d => {
        let point = __getArray(d);
        result1DPtrs.push(__pin(point));
        return point;
      }));
      let result2DPtr = __pin(roc2D);

      metrics.rocCurve = roc2D;
      result1DPtrs.map(d => __unpin(d));
      __unpin(result2DPtr);

      // Unpack PR curves
      result1DPtrs = [];
      let pr2D = __getArray(result3D[1].map(d => {
        let point = __getArray(d);
        result1DPtrs.push(__pin(point));
        return point;
      }));
      result2DPtr = __pin(roc2D);

      metrics.prCurve = pr2D;
      result1DPtrs.map(d => __unpin(d));
      __unpin(result2DPtr);

      // Unpack confusion matrix
      let result2D = __getArray(result3D[2]);
      result2DPtr = __pin(result2D);

      let result1D = __getArray(result2D[0]);
      let result1DPtr = __pin(result1D);

      metrics.confusionMatrix = result1D;

      __unpin(result1DPtr);
      __unpin(result2DPtr);

      // Unpack summary statistics
      result2D = __getArray(result3D[3]);
      result2DPtr = __pin(result2D);

      result1D = __getArray(result2D[0]);
      result1DPtr = __pin(result1D);

      metrics.accuracy = result1D[0];
      metrics.rocAuc = result1D[1];
      metrics.averagePrecision = result1D[2];

      __unpin(result1DPtr);
      __unpin(result2DPtr);

      __unpin(result3DPtr);
    }

    // let metrics = __getArray(this.ebm.getMetrics());
    return metrics;
  }
}

/**
 * A JS wrapper of rootMeanSquaredError for testing
 * @param {[number]} yTrue True values
 * @param {[number]} yPred Predicted values
 * @returns {number} score
 */
const __rootMeanSquaredError = (yTrue, yPred) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yPred);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let result = wasm.rootMeanSquaredError(yTruePtr, yPredPtr);

  __unpin(yTruePtr);
  __unpin(yPredPtr);

  return result;
};

/**
 * A JS wrapper of meanAbsoluteError for testing
 * @param {[number]} yTrue True values
 * @param {[number]} yPred Predicted values
 * @returns {number} score
 */
const __meanAbsoluteError = (yTrue, yPred) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yPred);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let result = wasm.meanAbsoluteError(yTruePtr, yPredPtr);

  __unpin(yTruePtr);
  __unpin(yPredPtr);

  return result;
};

/**
 * A JS wrapper of meanAbsoluteError for testing
 * @param {[number]} yTrue True values
 * @param {[number]} yScore Predicted scores
 * @returns {number} score
 */
const __countByThreshold = (yTrue, yScore) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yScore);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let result = wasm.countByThreshold(yTruePtr, yPredPtr);

  // Unpack the pointer
  result = __getArray(result);
  result = result.map((d) => __getArray(d));

  __unpin(yTruePtr);
  __unpin(yPredPtr);

  return result;
};

const __getROCCurve = (yTrue, yScore) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yScore);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let countResult = wasm.countByThreshold(yTruePtr, yPredPtr);
  __pin(countResult);

  let result = wasm.getROCCurve(countResult);

  // Unpack the pointer
  result = __getArray(result);
  result = result.map((d) => __getArray(d));

  __unpin(yTruePtr);
  __unpin(yPredPtr);
  __unpin(countResult);

  return result;
};

const __getPRCurve = (yTrue, yScore) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yScore);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let countResult = wasm.countByThreshold(yTruePtr, yPredPtr);
  __pin(countResult);

  let result = wasm.getPRCurve(countResult);

  // Unpack the pointer
  result = __getArray(result);
  result = result.map((d) => __getArray(d));

  __unpin(yTruePtr);
  __unpin(yPredPtr);
  __unpin(countResult);

  return result;
};

const __getROCAuc = (yTrue, yScore) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yScore);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let countResult = wasm.countByThreshold(yTruePtr, yPredPtr);
  __pin(countResult);

  let result = wasm.getROCCurve(countResult);
  __pin(result);

  let roc = wasm.getROCAuc(result);

  __unpin(yTruePtr);
  __unpin(yPredPtr);
  __unpin(countResult);
  __unpin(result);

  return roc;
};

const __getAveragePrecision = (yTrue, yScore) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yScore);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let countResult = wasm.countByThreshold(yTruePtr, yPredPtr);
  __pin(countResult);

  let result = wasm.getPRCurve(countResult);
  __pin(result);

  let averagePrecision = wasm.getAveragePrecision(result);

  __unpin(yTruePtr);
  __unpin(yPredPtr);
  __unpin(countResult);
  __unpin(result);

  return averagePrecision;
};

const __getAccuracy = (yTrue, yProb) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yProb);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let accuracy = wasm.getAccuracy(yTruePtr, yPredPtr);

  __unpin(yTruePtr);
  __unpin(yPredPtr);
  return accuracy;
};

const __getConfusionMatrix = (yTrue, yProb) => {
  let yTruePtr = __newArray(wasm.Float64Array_ID, yTrue);
  let yPredPtr = __newArray(wasm.Float64Array_ID, yProb);

  __pin(yTruePtr);
  __pin(yPredPtr);

  let confusionMatrix = __getArray(wasm.getConfusionMatrix(yTruePtr, yPredPtr));

  __unpin(yTruePtr);
  __unpin(yPredPtr);
  return confusionMatrix;
};


module.exports = wasmModule.exports;

// Add new functions
module.exports.__searchSortedLowerIndex = __searchSortedLowerIndex;
module.exports.__meanAbsoluteError = __meanAbsoluteError;
module.exports.__rootMeanSquaredError = __rootMeanSquaredError;
module.exports.__countByThreshold = __countByThreshold;
module.exports.__getROCCurve = __getROCCurve;
module.exports.__getPRCurve = __getPRCurve;
module.exports.__getROCAuc = __getROCAuc;
module.exports.__getAveragePrecision = __getAveragePrecision;
module.exports.__getAccuracy = __getAccuracy;
module.exports.__getConfusionMatrix = __getConfusionMatrix;
module.exports.EBM = EBM;
