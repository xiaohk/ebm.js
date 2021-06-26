const assert = require('assert');

const myModule = require('../../dist/cjs');

const utils = require('./utils');

const unitTestEqual = utils.unitTestEqual;
const assert1dCloseTo = utils.assert1dCloseTo;

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
