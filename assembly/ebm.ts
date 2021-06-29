/**
 * The entry file of the WebAssembly module.
 * 
 * Author: Jay Wang (jayw@gatech.edu)
 */

import { console } from 'as-console';
import { rootMeanSquaredError, meanAbsoluteError, countByThreshold, getROCCurve,
  getPRCurve, getROCAuc, getAveragePrecision, getAccuracy, getConfusionMatrix
} from './metrics';

/**
 * Find the lower bound of a pair between where inserting `value` into `sorted`
 * would keep `sorted` in order.
 * @param sorted a sorted array (ascending order)
 * @param value a number to insert into `sorted`
 * @returns the lower bound index in the sorted array to insert
 */
export function searchSortedLowerIndex(sorted: Array<f64>, value: f64): i32 {
  let left: i32 = 0;
  let right: i32 = sorted.length - 1;

  while (right - left > 1) {
    let i: i32 = left + Math.floor((right - left) / 2) as i32;

    if (value > sorted[i]) {
      left = i;
    } else if (value < sorted[i]) {
      right = i;
    } else {
      return i;
    }
  }

  // Handle out of bound issue
  if (value >= sorted[right]) {
    return right;
  }
  if (value < sorted[left]) {
    return left;
  }
  return right - 1;
}

function sigmoid(logit: f64): f64 {
  let odd = Math.exp(logit);
  return odd / (1 + odd);
}

export class __EBM {

  // --- Initialization values ---

  // Feature information
  featureNames: Array<string>;
  featureTypes: Array<string>;

  // Feature bin edges and additive score
  binEdges: Array<Array<f64>>;
  scores: Array<Array<f64>>;
  intercept: f64;

  // Bin edges and scores of interaction terms
  interactionIndexes: Array<Array<i32>>;
  interactionScores: Array<Array<Array<f64>>>;
  interactionBinEdges: Array<Array<Array<f64>>>;

  // The test dataset
  samples: Array<Array<f64>>;
  labels: Array<f64>;

  editingFeatureIndex: i32;
  isClassification: bool;

  // --- Values needed to be computed ---
  
  // Current prediction
  predLabels: Array<f64>;
  predProbs: Array<f64>;
  editingFeatureSampleMap: Array<Array<i32>>;

  /**
   * 
   * @param featureNames Feature names
   * @param featureTypes Feature types ('continuous', 'categorical')
   * @param binEdges Bin left point (continuous) or labels (categorical)
   * @param scores Bin additive score
   * @param intercept The intercept score
   * @param interactionIndexes Feature indexes of each interaction pair
   * @param interactionBinEdges Array of pairs of bin edges for each interaction pair
   * @param interactionScores Array of 2D additive scores for each interaction pair
   * @param samples The data matrix [# of samples, # of features]
   * @param labels The data labels [# of samples]
   */
  constructor(
    featureNames: Array<string>,
    featureTypes: Array<string>,
    binEdges: Array<Array<f64>>,
    scores: Array<Array<f64>>,
    intercept: f64,
    interactionIndexes: Array<Array<i32>>,
    interactionBinEdges: Array<Array<Array<f64>>>,
    interactionScores: Array<Array<Array<f64>>>,
    samples: Array<Array<f64>>,
    labels: Array<f64>,
    editingFeatureIndex: i32,
    isClassification: bool
  ) {

    // Step 1: Initialize properties from the arguments
    this.featureNames = featureNames;
    this.featureTypes = featureTypes;
    this.binEdges = binEdges;
    this.scores = scores;
    this.intercept = intercept;
    this.interactionIndexes = interactionIndexes;
    this.interactionBinEdges = interactionBinEdges;
    this.interactionScores = interactionScores;
    this.samples = samples;
    this.labels = labels;
    this.editingFeatureIndex = editingFeatureIndex;
    this.isClassification = isClassification;

    /**
     * Step 2: Iterate through the sample data to initialize
     * - Current prediction
     * - Editing feature's bin bucket info
     */
    this.predLabels = new Array<f64>(this.labels.length).fill(this.intercept);
    this.predProbs = new Array<f64>(this.predLabels.length).fill(0.0);

    this.editingFeatureSampleMap = new Array<Array<i32>>(this.binEdges[this.editingFeatureIndex].length);

    // Initialize the editing feature map
    for (let b = 0; b < this.binEdges[this.editingFeatureIndex].length; b++) {
      this.editingFeatureSampleMap[b] = new Array<i32>();
    }

    for (let i = 0; i < this.samples.length; i++) {
      // Add main effect scores
      for (let j = 0; j < this.samples[0].length; j++) {
        
        let curFeatureName = this.featureNames[j];
        let curFeatureType = this.featureTypes[j];
        let curFeature = this.samples[i][j];

        // Use the feature value to find the corresponding bin
        let binIndex: i32;
        let binScore: f64;

        if (curFeatureType == 'continuous') {
          binIndex = searchSortedLowerIndex(this.binEdges[j], curFeature);
          binScore = this.scores[j][binIndex];
        } else {
          binIndex = this.binEdges[j].indexOf(curFeature);
          if (binIndex < 0) {
            // Unseen level during training => use 0 as score instead
            console.log(`>> Unseen feature: ${curFeatureName}, ${i}, ${j}, ${curFeature}`);
            binScore = 0
          } else {
            binScore = this.scores[j][binIndex];
          }
        }

        // Add the current score to prediction
        this.predLabels[i] += binScore;

        // If we encounter the editing feature, we also want to collect the sample
        // IDs for each bin
        if (j == this.editingFeatureIndex) {
          this.editingFeatureSampleMap[binIndex].push(i);
        }
      }

      // Add interaction effect scores
      for (let j = 0; j < this.interactionIndexes.length; j++) {
        let curIndexes = this.interactionIndexes[j];
        let type1 = this.featureTypes[curIndexes[0]];
        let type2 = this.featureTypes[curIndexes[1]];

        let value1 = this.samples[i][curIndexes[0]];
        let value2 = this.samples[i][curIndexes[1]];

        // Figure out which bin to query along two dimensions
        let binIndex1: i32;
        let binIndex2: i32;

        if (type1 == 'continuous') {
          binIndex1 = searchSortedLowerIndex(this.interactionBinEdges[j][0], value1);
        } else {
          binIndex1 = this.interactionBinEdges[j][0].indexOf(value1);
        }

        if (type2 == 'continuous') {
          binIndex2 = searchSortedLowerIndex(this.interactionBinEdges[j][1], value2);
        } else {
          binIndex2 = this.interactionBinEdges[j][1].indexOf(value2);
        }

        // Query the bin scores
        let binScore: f64;

        if (binIndex2 < 0 || binIndex2 < 0) {
          binScore = 0;
        } else {
          binScore = this.interactionScores[j][binIndex1][binIndex2];
        }

        // Add the current score to prediction
        this.predLabels[i] += binScore;
      }

      // If it is a classifier, then we have to convert the logit to prob
      if (this.isClassification) {
        this.predProbs[i] = sigmoid(this.predLabels[i]);
      }
    }

  }

  updateModel(changedBinIndexes: Array<i32>, changedScores: Array<f64>): void {
    // Update the bin scores
    let scoreDiffs = new Array<f64>(changedScores.length);

    for (let i = 0; i < changedBinIndexes.length; i++) {
      // Keep track the score difference for later faster prediction
      scoreDiffs[i] = changedScores[i] - this.scores[this.editingFeatureIndex][i];

      this.scores[this.editingFeatureIndex][i] = changedScores[i];
    }

    // Update the prediction
    this.updatePredictionPartial(changedBinIndexes, scoreDiffs);
  }

  updatePredictionPartial(changedBinIndexes: Array<i32>, scoreDiffs: Array<f64>): void {
    // We know which bin has been changed and which samples are affected, so we
    // only need to update their predictions
    for (let i = 0; i < changedBinIndexes.length; i++) {
      let affectedSampleIDs = this.editingFeatureSampleMap[i];

      for (let j = 0; j < affectedSampleIDs.length; j++) {
        let s = affectedSampleIDs[j];
        this.predLabels[s] += scoreDiffs[i];

        // Update the prob if it is a classifier
        if (this.isClassification) {
          this.predProbs[s] = sigmoid(this.predLabels[s]);
        }
      }
    }
  }

  /**
   * Overwrite the bin definition and scores of the current editing feature.
   * @param newBinEdges New bin edges.
   * @param newScores New bin scores.
   */
  setModel(newBinEdges: Array<f64>, newScores: Array<f64>): void {

    // Step 1: Remove the effect of this feature from logits (re-compute prob later)
    for (let b = 0; b < this.binEdges[this.editingFeatureIndex].length; b++) {
      let affectedSampleIDs = this.editingFeatureSampleMap[b];
      let curBinScore = this.scores[this.editingFeatureIndex][b];

      for (let i = 0; i < affectedSampleIDs.length; i++) {
        let s = affectedSampleIDs[i];
        this.predLabels[s] -= curBinScore;
      }
    }

    // Step 2: overwrite the bin edges and scores
    this.binEdges[this.editingFeatureIndex] = newBinEdges;
    this.scores[this.editingFeatureIndex] = newScores;

    // Step 3: Re-indexing the sample IDs & Add the new score to logits
    this.editingFeatureSampleMap = new Array<Array<i32>>(newBinEdges.length);

    // Initialize the editing feature map
    for (let b = 0; b < newBinEdges.length; b++) {
      this.editingFeatureSampleMap[b] = new Array<i32>();
    }

    for (let s = 0; s < this.samples.length; s++) {
      let curFeature = this.samples[s][this.editingFeatureIndex];

      // Use the feature value to find the corresponding bin
      let binIndex: i32;
      let binScore: f64;

      if (this.featureTypes[this.editingFeatureIndex] == 'continuous') {
        binIndex = searchSortedLowerIndex(newBinEdges, curFeature);
        binScore = newScores[binIndex];
      } else {
        binIndex = newBinEdges.indexOf(curFeature);
        if (binIndex < 0) {
          // Unseen level during training => use 0 as score instead
          console.log(`>> Unseen feature: ${this.featureNames[this.editingFeatureIndex]}, ${s}, ${curFeature}`);
          binScore = 0
        } else {
          binScore = newScores[binIndex];
        }
      }

      // Add the new score to logits
      this.predLabels[s] += binScore;

      // Update the prob if it is a classifier
      if (this.isClassification) {
        this.predProbs[s] = sigmoid(this.predLabels[s]);
      }

      // Track the sample ID in the index
      // console.log([s, binIndex, curFeature]);
      this.editingFeatureSampleMap[binIndex].push(s);
    }
  }

  getPrediction(): Array<f64> {
    if (this.isClassification) {
      return this.predProbs;
    } else {
      return this.predLabels;
    }
  }

  getMetrics(): Array<Array<Array<f64>>> {
    let output = new Array<Array<Array<f64>>>();

    if (!this.isClassification) {
      let curResult = new Array<f64>();
      curResult.push(rootMeanSquaredError(this.labels, this.predLabels));
      curResult.push(meanAbsoluteError(this.labels, this.predLabels));
      output.push([curResult]);
    } else {
      // Compute ROC curves and PR curves
      let countResult = countByThreshold(this.labels, this.predProbs);
      let rocPoints = getROCCurve(countResult);
      let prPoints = getPRCurve(countResult);

      output.push(rocPoints);
      output.push(prPoints);

      // Compute confusion matrix
      let confusionMatrix = getConfusionMatrix(this.labels, this.predProbs);

      output.push([confusionMatrix]);

      // Compute summary statistics
      let rocAuc = getROCAuc(rocPoints);
      let averagePrecision = getAveragePrecision(prPoints);
      let accuracy = getAccuracy(this.labels, this.predProbs);

      output.push([[accuracy, rocAuc, averagePrecision]]);

      return output;
    }

    return output;
  }

  printName(): string {
    trace('editing', 1, this.editingFeatureIndex);
    return this.featureTypes[this.editingFeatureIndex];
  };

}

// Export the metrics functions to JS for testing
export { rootMeanSquaredError, meanAbsoluteError, countByThreshold, getROCCurve,
  getPRCurve, getROCAuc, getAveragePrecision, getAccuracy, getConfusionMatrix
};

// We need unique array id so we can allocate them in JS
export const Int32Array_ID = idof<Array<i32>>();
export const Int32Array2D_ID = idof<Array<Array<i32>>>();

export const Float64Array_ID = idof<Array<f64>>();
export const Float64Array2D_ID = idof<Array<Array<f64>>>();
export const Float64Array3D_ID = idof<Array<Array<Array<f64>>>>();

export const StringArray_ID = idof<Array<string>>();
export const StringArray2D_ID = idof<Array<Array<string>>>();
