const assert = require('assert');

const myModule = require('../../dist/cjs');

const utils = require('./utils');

const unitTestEqual = utils.unitTestEqual;
const assert1dCloseTo = utils.assert1dCloseTo;
const assert2dCloseTo = utils.assert2dCloseTo;

const name = 'metrics';

console.log(`\n--- Start testing ${name} ---`);

let y1;
let y2;

y1 = [0.7229, -7.3623, 9.9206, 4.953, 8.0319, -7.0578, 7.4571,
  -3.3559, -0.6157, 0.4591, -9.8325, 7.0099, 8.0888, 3.9193,
  -6.9667, -6.9921, 2.9789, -1.2405, 5.6976, 4.5199];
y2 = [-5.1721, 4.0849, -7.3885, -2.0502, -8.4897, 9.3282, 1.4494,
  -2.405, 4.4971, -4.2769, 7.2402, 1.7029, -5.7956, -4.2564,
  -6.0157, 6.654, -8.2576, 0.8907, -1.3447, -5.4555];

utils.unitTestAssert(
  'RMSE computation',
  () => myModule.__rootMeanSquaredError(y1, y2),
  10.458858620518779,
  (t, r) => assert(Math.abs(t - r) <= 1e-6)
);

utils.unitTestAssert(
  'MAE computation',
  () => myModule.__meanAbsoluteError(y1, y2),
  9.039590000000002,
  (t, r) => assert(Math.abs(t - r) <= 1e-6)
);

utils.unitTestAssert(
  'MAPE computation',
  () => myModule.__meanAbsolutePercentageError(y1, y2),
  2.7136439667272474,
  (t, r) => assert(Math.abs(t - r) <= 1e-6)
);


y1 = [1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1,
  1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0];
y2 = [
  -0.2, 0.3, 0.2, 0.28, 0.43, -0.15, -0.09, -0.13, 0.23,
  -0.24, -0.06, -0.15, -0.05, 0.1, 0.05, -0.11, 0.16, 0.05,
  -0.08, -0.26, 0.25, -0.18, -0.38, 0.26, 0.13, -0.04, 0.39,
  0.42, -0.48, -0.31, -0.09, 0.01, -0.2, 0.4, -0.05, 0.12,
  0.06, -0.07, 0., -0.4, 0.03, 0.2, 0.07, 0.5, -0.28,
  0.31, 0.19, 0.12, 0.03, 0.22
];

let expected = [
  [0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 1., 1.,
    1., 2., 2., 3., 4., 4., 5., 6., 6., 6., 7., 7., 9.,
    10., 11., 11., 12., 13., 14., 15., 16., 17., 18., 19., 20., 21.,
    22., 23., 24.],
  [1., 2., 3., 4., 5., 6., 7., 8., 9., 10., 11., 11., 13.,
    14., 14., 15., 16., 16., 17., 17., 18., 20., 21., 21., 22., 22.,
    22., 22., 23., 24., 24., 24., 25., 25., 26., 26., 26., 26., 26.,
    26., 26., 26.],
  [0.5, 0.43, 0.42, 0.4, 0.39, 0.31, 0.3, 0.28, 0.26,
    0.25, 0.23, 0.22, 0.2, 0.19, 0.16, 0.13, 0.12, 0.1,
    0.07, 0.06, 0.05, 0.03, 0.01, 0., -0.04, -0.05, -0.06,
    -0.07, -0.08, -0.09, -0.11, -0.13, -0.15, -0.18, -0.2, -0.24,
    -0.26, -0.28, -0.31, -0.38, -0.4, -0.48]
];


utils.unitTestAssert(
  'FP TP counts',
  () => myModule.__countByThreshold(y1, y2),
  expected,
  (t, r) => assert2dCloseTo(t, r, 1e-2)
);

expected = [
  [0.0, 0.0],
  [0.038461538461538464, 0.0],
  [0.4230769230769231, 0.0],
  [0.4230769230769231, 0.041666666666666664],
  [0.5, 0.041666666666666664],
  [0.5384615384615384, 0.041666666666666664],
  [0.5384615384615384, 0.08333333333333333],
  [0.5769230769230769, 0.08333333333333333],
  [0.6153846153846154, 0.125],
  [0.6153846153846154, 0.16666666666666666],
  [0.6538461538461539, 0.16666666666666666],
  [0.6538461538461539, 0.20833333333333334],
  [0.6923076923076923, 0.25],
  [0.7692307692307693, 0.25],
  [0.8076923076923077, 0.25],
  [0.8076923076923077, 0.2916666666666667],
  [0.8461538461538461, 0.2916666666666667],
  [0.8461538461538461, 0.375],
  [0.8461538461538461, 0.4583333333333333],
  [0.8846153846153846, 0.4583333333333333],
  [0.9230769230769231, 0.5],
  [0.9230769230769231, 0.5833333333333334],
  [0.9615384615384616, 0.625],
  [0.9615384615384616, 0.6666666666666666],
  [1.0, 0.7083333333333334],
  [1.0, 1.0]
];

utils.unitTestAssert(
  'Compute ROC Curve',
  () => myModule.__getROCCurve(y1, y2),
  expected,
  (t, r) => assert2dCloseTo(t, r, 1e-6)
);

expected = [
  [1.0, 0.0],
  [1.0, 0.038461538461538464],
  [1.0, 0.07692307692307693],
  [1.0, 0.11538461538461539],
  [1.0, 0.15384615384615385],
  [1.0, 0.19230769230769232],
  [1.0, 0.23076923076923078],
  [1.0, 0.2692307692307692],
  [1.0, 0.3076923076923077],
  [1.0, 0.34615384615384615],
  [1.0, 0.38461538461538464],
  [1.0, 0.4230769230769231],
  [0.9166666666666666, 0.4230769230769231],
  [0.9285714285714286, 0.5],
  [0.9333333333333333, 0.5384615384615384],
  [0.875, 0.5384615384615384],
  [0.8823529411764706, 0.5769230769230769],
  [0.8421052631578947, 0.6153846153846154],
  [0.8, 0.6153846153846154],
  [0.8095238095238095, 0.6538461538461539],
  [0.7727272727272727, 0.6538461538461539],
  [0.75, 0.6923076923076923],
  [0.7692307692307693, 0.7692307692307693],
  [0.7777777777777778, 0.8076923076923077],
  [0.75, 0.8076923076923077],
  [0.7586206896551724, 0.8461538461538461],
  [0.7096774193548387, 0.8461538461538461],
  [0.6875, 0.8461538461538461],
  [0.6666666666666666, 0.8461538461538461],
  [0.6764705882352942, 0.8846153846153846],
  [0.6666666666666666, 0.9230769230769231],
  [0.6486486486486487, 0.9230769230769231],
  [0.631578947368421, 0.9230769230769231],
  [0.625, 0.9615384615384616],
  [0.6097560975609756, 0.9615384615384616],
  [0.6046511627906976, 1.0]
];

utils.unitTestAssert(
  'Compute PR Curve',
  () => myModule.__getPRCurve(y1, y2),
  expected,
  (t, r) => assert2dCloseTo(t, r, 1e-6)
);

utils.unitTestAssert(
  'Compute ROC AUC score',
  () => myModule.__getROCAuc(y1, y2),
  0.8469551282051283,
  (t, r) => assert(Math.abs(t - r) < 1e-6)
);

utils.unitTestAssert(
  'Compute average precision score',
  () => myModule.__getAveragePrecision(y1, y2),
  0.8739271779969812,
  (t, r) => assert(Math.abs(t - r) < 1e-6)
);

let y2Prob = y2.map(d => Math.exp(d) / (1 + Math.exp(d)));

utils.unitTestAssert(
  'Compute accuracy score',
  () => myModule.__getAccuracy(y1, y2Prob),
  0.76,
  (t, r) => assert(Math.abs(t - r) < 1e-6)
);

utils.unitTestAssert(
  'Compute confusion matrix',
  () => myModule.__getConfusionMatrix(y1, y2Prob),
  [17, 7, 5, 21],
  (t, r) => assert1dCloseTo(t, r, 1e-6)
);

utils.unitTestAssert(
  'Balanced accuracy',
  () => myModule.__getBalancedAccuracy(y1, y2Prob),
  0.7580128205128205,
  (t, r) => assert(Math.abs(t - r) < 1e-6)
);

// let y3 = [1, 0, 0];
// let y4Prob = [0.001, 0.002, 0.002];
// let y4Prob = [0, 0, 0];
// console.log(myModule.__getROCAuc(y3, y4Prob));

