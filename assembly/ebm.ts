/**
 * The entry file of the WebAssembly module.
 * 
 * Author: Jay Wang (jayw@gatech.edu)
 */

import { console } from 'as-console';

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
  if (value > sorted[right]) {
    return right;
  }
  if (value < sorted[left]) {
    return left;
  }
  return right - 1;
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

  // --- Values needed to be computed ---
  
  // Current prediction
  predLabels: Array<f64>;
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

    /**
     * Step 2: Iterate through the sample data to initialize
     * - Current prediction
     * - Editing feature's bin bucket info
     */
    this.predLabels = new Array<f64>(this.labels.length).fill(this.intercept);
    this.editingFeatureSampleMap = new Array<Array<i32>>(this.binEdges[this.editingFeatureIndex].length);

    for (let i = 0; i < this.samples.length; i++) {
      // Add main effect scores
      for (let j = 0; j < this.samples[0].length; j++) {
        
        let curFeatureName = this.featureNames[j];
        let curFeatureType = this.featureTypes[j];
        let curFeature = this.samples[i][j];

        // Use the feature value to find the corresponding bin
        let binScore:f64;

        if (curFeatureType == 'continuous') {
          let binIndex = searchSortedLowerIndex(this.binEdges[j], curFeature);
          binScore = this.scores[j][binIndex];
        } else {
          let binIndex = this.binEdges[j].indexOf(curFeature);
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
    }

  };

  printName(): string {
    trace('editing', 1, this.editingFeatureIndex);
    return this.featureTypes[this.editingFeatureIndex];
  }

  getPred(): Array<f64> {
    return this.predLabels;
  }

  printBinEdge(): Array<f64> {
    // trace('here', 1, this.binEdges.length);
    // trace('here', 1, this.binEdges[2].length);
    // trace('here', 1, this.binEdges[1].length);

    // trace('inter', 3, this.interactionScores.length, this.interactionScores[0].length, this.interactionScores[0][0].length);
    // trace('inter', 1, this.interactionScores[12][2][0]);

    // trace('sample', 3, this.samples.length, this.samples[0].length, this.samples[1].length);
    // trace('sample', 1, this.samples[3][3]);

    // trace('label', 2, this.labels.length, this.labels[3]);

    // trace('predLabel', 2, this.predLabels.length, this.predLabels[0]);
    return this.binEdges[0];
  }
}

// We need unique array id so we can allocate them in JS
export const Int32Array_ID = idof<Array<i32>>();
export const Int32Array2D_ID = idof<Array<Array<i32>>>();

export const Float64Array_ID = idof<Array<f64>>();
export const Float64Array2D_ID = idof<Array<Array<f64>>>();
export const Float64Array3D_ID = idof<Array<Array<Array<f64>>>>();

export const StringArray_ID = idof<Array<string>>();
export const StringArray2D_ID = idof<Array<Array<string>>>();
