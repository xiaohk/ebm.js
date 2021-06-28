/* eslint-disable eqeqeq */

/**
 * Common ML metrics implemented in WASM.
 *
 * Author: Jay Wang (jayw@gatech.edu)
 */

import { console } from 'as-console';

/**
 * Compute the root mean squared error (RMSE)
 * @param yTrue True values
 * @param yPred Predicted values
 * @returns score
 */
export function rootMeanSquaredError(yTrue: Array<f64>, yPred: Array<f64>): f64 {
  let SESum = 0.0;
  for (let i = 0; i < yTrue.length; i++) {
    SESum += (yPred[i] - yTrue[i]) ** 2;
  }
  return Math.sqrt(SESum / yTrue.length);
}

/**
 * Compute the root mean squared error (RMSE)
 * @param yTrue True values
 * @param yPred Predicted values
 * @returns score
 */
export function meanAbsoluteError(yTrue: Array<f64>, yPred: Array<f64>): f64 {
  let AESum = 0.0;
  for (let i = 0; i < yTrue.length; i++) {
    AESum += Math.abs(yTrue[i] - yPred[i]);
  }
  return AESum / yTrue.length;
}

/**
 * Compute the threshold along with true/false positives for the given prediction
 * scores and true labels.
 *
 * @param {[int]} yTrue Array of true labels. 1 for positive and 0 for negative
 * @param {[float]} yScore Array of prediction scores.
 */
export function countByThreshold(yTrue: Array<f64>, yScore: Array<f64>): Array<Array<f64>> {
  let thresholds = new Array<f64>();
  let fps = new Array<f64>();
  let tps = new Array<f64>();

  // Sort yTrue and yScore together, by sorting yScore decreasingly
  let yMerged = new Array<Array<f64>>();
  let sortedYTrue = new Array<f64>();
  let sortedYScore = new Array<f64>();

  for (let i = 0; i < yTrue.length; i++) {
    yMerged.push([yTrue[i], yScore[i]]);
  }

  yMerged.sort((a, b) => {
    if (b[1] - a[1] > 0) {
      return 1;
    } else if (b[1] - a[1] < 0) {
      return -1;
    } else {
      return 0;
    }
  });

  for (let i = 0; i < yMerged.length; i++) {
    sortedYTrue.push(yMerged[i][0]);
    sortedYScore.push(yMerged[i][1]);
  }

  // Construct the threshold list. Thresholds are the unique score values with a
  // descending order.
  thresholds.push(sortedYScore[0]);
  for (let i = 1; i < sortedYScore.length; i++) {
    if (thresholds[thresholds.length - 1] !== sortedYScore[i]) {
      thresholds.push(sortedYScore[i]);
    }
  }

  // Count FP and TP based on different thresholds. Since thresholds are sorted
  // descending, the score passing current threshold will definitely pass the
  // next threshold. Therefore, FP and TP are actually cumulative.
  // My algorithm can be further optimized.
  let cumFP = 0;
  let cumTP = 0;

  for (let ti = 0; ti < thresholds.length; ti++) {
    let t = thresholds[ti];
    let i = 0;
    for (i; i < sortedYScore.length; i++) {
      // Get the prediction
      let curPredict = sortedYScore[i] >= t ? 1 : 0;

      // If the prediction is N, then we break, because we are not counting
      // FN or TN, and the scores are sorted
      if (curPredict === 0) {
        break;
      }

      // Update FP, TP count for this threshold
      if (curPredict === sortedYTrue[i]) {
        cumTP += 1;
      } else if (curPredict !== sortedYTrue[i]) {
        cumFP += 1;
      }
    }
    // Store FP and TP for this threshold
    fps.push(cumFP);
    tps.push(cumTP);

    // Slice the score array so no need to revisit larger values again
    sortedYScore = sortedYScore.slice(i, sortedYScore.length);
    sortedYTrue = sortedYTrue.slice(i, sortedYTrue.length);
  }

  return [fps, tps, thresholds];
}

/**
 * Function to get ROC Curve points.
 *
 * @returns array of points (x is fpr, y is tpr)
 */
export function getROCCurve(thresholdResult: Array<Array<f64>>): Array<Array<f64>> {
  // Get threshold along with TPs and FPs
  let fps = thresholdResult[0];
  let tps = thresholdResult[1];

  // TODO: Could drop thresholds where corresponding point is on the connected
  // line of the previous and next points

  // Remember the last entry of TPs is the total number of positive labels, and
  // the last entry of FPs is the total number of negative labels
  let totalN = fps[fps.length - 1];
  let totalP = tps[tps.length - 1];

  // Add (0, 0) as the starting point
  let rocPoints = [[0.0, 0.0]];

  for (let i = 0; i < tps.length; i++) {
    rocPoints.push(
      [
        tps[i] / totalP,
        fps[i] / totalN
      ]
    );
  }

  return rocPoints;
}

/**
 * Function to get precision-recall Curve points.
 *
 * @param {[int]} yTrue array of true labels
 * @param {[float]} yScore array of prediction scores
 *
 * @returns array of points (x is recall, y is precision)
 */
export function getPRCurve(thresholdResult: Array<Array<f64>>): Array<Array<f64>> {
  // Get threshold along with TPs and FPs
  let fps = thresholdResult[0];
  let tps = thresholdResult[1];

  // Remember the last entry of TPs is the total number of positive labels.
  let totalP = tps[tps.length - 1];

  // Add (1, 0) as the starting point
  let prPoints = [[1.0, 0.0]];

  for (let i = 0; i < tps.length; i++) {
    prPoints.push(
      [
        tps[i] / (tps[i] + fps[i]),
        tps[i] / totalP
      ]
    );

    // Stop when full recall is achieved
    if (tps[i] / totalP == 1.0) {
      break;
    }
  }

  return prPoints;
}
