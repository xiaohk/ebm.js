/**
 * The entry file of the WebAssembly module.
 * 
 * Author: Jay Wang (jayw@gatech.edu)
 */

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
  featureNames: Array<string>;
  featureTypes: Array<string>;

  binEdges: Array<Array<f64>>;
  scores: Array<Array<f64>>;

  interactionNames: Array<Array<string>>;
  interactionScores: Array<Array<Array<f64>>>;
  interactionBinEdges: Array<Array<Array<f64>>>;

  samples: Array<Array<f64>>;

  intercept: f64;

  /**
   * 
   * @param featureNames Feature names
   * @param featureTypes Feature types ('continuous', 'categorical')
   * @param binEdges Bin left point (continuous) or labels (categorical)
   * @param scores Bin additive score
   * @param interactionNames Feature names of each interaction pair
   * @param interactionBinEdges Array of pairs of bin edges for each interaction pair
   * @param interactionScores Array of 2D additive scores for each interaction pair
   * @param samples The data matrix [# of samples, # of features]
   * @param intercept The intercept score
   */
  constructor(
    featureNames: Array<string>,
    featureTypes: Array<string>,
    binEdges: Array<Array<f64>>,
    scores: Array<Array<f64>>,
    interactionNames: Array<Array<string>>,
    interactionBinEdges: Array<Array<Array<f64>>>,
    interactionScores: Array<Array<Array<f64>>>,
    samples: Array<Array<f64>>,
    intercept: f64
  ) {
    this.featureNames = featureNames;
    this.featureTypes = featureTypes;
    this.binEdges = binEdges;
    this.scores = scores;
    this.interactionNames = interactionNames;
    this.interactionBinEdges = interactionBinEdges;
    this.interactionScores = interactionScores;
    this.samples = samples;
    this.intercept = intercept;
  };

  printName(): string {
    return this.interactionNames[12][1];
  }

  printBinEdge(): Array<f64> {
    trace('here', 1, this.binEdges.length);
    trace('here', 1, this.binEdges[2].length);
    trace('here', 1, this.binEdges[1].length);

    trace('inter', 3, this.interactionScores.length, this.interactionScores[0].length, this.interactionScores[0][0].length);
    trace('inter', 1, this.interactionScores[12][2][0]);

    trace('sample', 3, this.samples.length, this.samples[0].length, this.samples[1].length);
    trace('sample', 1, this.samples[3][3]);
    return this.binEdges[0];
  }
}

// We need unique array id so we can allocate them in JS
export const Int32Array_ID = idof<Array<i32>>();

export const Float64Array_ID = idof<Array<f64>>();
export const Float64Array2D_ID = idof<Array<Array<f64>>>();
export const Float64Array3D_ID = idof<Array<Array<Array<f64>>>>();

export const StringArray_ID = idof<Array<string>>();
export const StringArray2D_ID = idof<Array<Array<string>>>();
