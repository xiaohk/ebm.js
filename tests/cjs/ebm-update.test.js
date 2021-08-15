const assert = require('assert');

const fetch = require('node-fetch');

const myModule = require('../../dist/cjs/ebm');

const utils = require('./utils');

const unitTestEqual = utils.unitTestEqual;
const assert1dCloseTo = utils.assert1dCloseTo;
const assert2dCloseTo = utils.assert2dCloseTo;

const name = 'EBM model update';

console.log(`\n--- Start testing ${name} ---`);


const testEBMClassifier = async () => {
  const sampleURL = 'https://gist.githubusercontent.com/xiaohk/9346973b866741987aa6111c1d5d33e3/raw/345f9d9c1177ff8430d89d1c967c72f5bb72d161/Iowa-binary-sample-data-test.json';
  const featureURL = 'https://gist.githubusercontent.com/xiaohk/9346973b866741987aa6111c1d5d33e3/raw/18876b14ea4677012271beb3e4f668d4c6cb7951/Iowa-binary-model-data-test.json';

  let result = await fetch(sampleURL);
  let sampleData = await result.json();

  result = await fetch(featureURL);
  let featureData = await result.json();

  let ebm = new myModule.EBM(featureData, sampleData, 'LotFrontage', true);

  // Initial model 

  let expectedPred = [
    0.01, 0.306, 0., 0.997, 0., 0.104, 0.944, 0.994, 0.906,
    0.999, 0.003, 0.004, 0.997, 0.723, 0.001, 0.006, 0.999, 0.961,
    0.878, 0.001, 0.989, 0.933, 0.063, 0.004, 0.998, 0.001, 0.553,
    0.996, 0.995, 0.994, 0.003, 0.993, 0.683, 0.949, 1., 0.957,
    0.671, 0.997, 0.009, 0.061, 0.001, 1., 0.004, 0.002, 0.169,
    0.083, 0.984, 0.964, 0.114, 0.048, 0.014, 0.026, 0.029, 0.946,
    0.04, 0.986, 0.428, 0.999, 0.037, 0., 0.935, 0.988, 0.003,
    0.005, 0.999, 0.987, 0.799, 0.928, 0.144, 0.024, 0.992, 0.026,
    0.993, 0., 0.61, 0.989, 0.863, 0.731, 0.031, 0.018, 0.011,
    0.001, 0.999, 0.094, 0.998, 0.968, 0.979, 0.956, 0.987, 0.008,
    0.996, 0.998, 0.905, 0.923, 0.935, 0., 0.522, 0.948, 0.004,
    0.084, 0.149, 0.996, 0.496, 0.992, 0.587, 0.999, 0.985, 0.028,
    0.996, 0.645, 0.641, 0.949, 0.085, 0.999, 0.077, 0.92, 0.002,
    0.008, 0.003, 0.133, 0.025, 0.001, 0.969, 0.004, 0.928, 0.996,
    0.008, 0.997, 0.111, 0.997, 0.312, 0.969, 0.003, 0.002, 0.,
    0.995, 0.99, 0.001, 0.392, 0.996, 0.003, 0.581, 0.001, 0.997,
    0.291, 0.987, 0., 0.001, 0.045, 0.991, 0.992, 0.967, 0.044,
    0.006, 0.008, 0.997, 0.076, 0.395, 0.007, 0.994, 0.998, 0.006,
    0.003, 0.018, 0.99, 0.988, 0.997, 0.004, 0.868, 0.998, 0.139,
    0.993, 0.02, 0.079, 0.096, 0.003, 0.002, 0.016, 0.981, 0.,
    0.032, 0.998, 0.618, 1., 0.986, 0.043, 0.988, 0.214, 0.381,
    0.942, 0.004, 0.007, 0.541, 0.109, 0.999, 0.143, 0.947, 0.992,
    0.991, 0.004, 0.808, 0.978, 0.997, 0.999, 0.006, 0.001, 0.218,
    0.998, 0.995, 0.003, 0.054, 0.001, 0.984, 0.998, 0.623, 0.086,
    0.005, 0.001, 0.001, 0.971, 0.998, 0.133, 0.21, 0.025, 0.995,
    0.905, 0.318, 0.14, 0.84, 0.992, 0.993, 0.025, 0.046, 0.029,
    0.002, 1., 0.037, 0.937, 0.98, 0.977, 1., 0.014, 1.,
    0.034, 0.997, 0.001, 0.246, 0.993, 0.001, 0.035, 0.978, 0.004,
    0.423, 0.97, 0.003, 0.942, 0.009, 0.724, 0.853, 1., 0.031,
    0.465, 0.999, 0.114, 0.91, 0.006, 0.871, 0.004, 0.584, 0.904,
    0.715, 0.001, 0.949, 0.6, 0.72, 0.789, 0.989, 0.995, 0.998,
    0.006, 0.28, 0.005, 0.09, 0.007, 0.988, 0.942, 0.975, 0.998,
    0.991, 0.892, 0.059, 0., 1., 0.998, 0.998, 0.004, 0.603,
    0.988, 0.951, 0.005, 0.008, 0.983, 0.93, 0.92, 1., 0.006,
    0.993, 0., 0.008, 0.978, 0.994, 0.96, 0.038, 0.209, 0.077,
    0.971, 0.455, 0., 0.001, 0.766, 1., 0., 0.001, 0.256,
    0.999, 0.166, 0.014, 0.283, 0.002, 0.002, 0.008, 0.692, 1.,
    0.01, 0.993, 0.191, 0.962, 0.35, 0.899, 0.923, 0.836, 0.998,
    0.052, 0.006, 0.983, 0.998, 0.112, 0.001, 0.962, 0.99, 0.999,
    0.786, 0.981, 0.999, 0.998, 0., 0.994, 0.96, 0.018, 0.123,
    0.992, 0.03, 0.018, 0.999, 0.963, 0.008, 0.015, 0.973, 0.,
    0.978, 0.999, 0.014, 0.059, 0.026, 0.448, 0.958, 0.998, 0.012,
    0.962, 0.008, 0.924, 0.971, 0.004, 0.906, 1., 0.994, 0.998,
    0.036, 0.998, 0.995, 0.998, 0.998, 0.078, 0.166, 0.038, 0.765,
    0.014, 0.73, 0.109, 0.047, 0.709, 0.004, 0.018, 0.005, 0.001,
    0.009, 0.001, 0.533, 0.996, 0.008, 0.982, 0.956, 0.966, 0.984,
    0.956, 0.003, 0.989, 0.009, 0.005, 0.498, 0.016, 0.961, 0.017,
    0.987, 0.993, 0.004, 0.907, 0.993, 0.995, 0.975, 0.002, 0.003,
    0.001, 0.003, 1., 0.526, 0.017, 0.963
  ];

  let predictions = ebm.getProb();

  for (let i = 0; i < predictions.length; i++) {
    if (Math.abs(predictions[i] - expectedPred[i]) >= 0.01) {
      console.log(predictions[i], expectedPred[i], i);
    }
  }

  utils.unitTestAssert(
    'EBM initial prediction',
    () => ebm.getProb(),
    expectedPred,
    (t, r) => assert1dCloseTo(t, r, 0.01)
  );


  // Set model on one feature

  expectedPred = [
    0.001, 0.059, 0., 0.977, 0., 0.015, 0.689, 0.955, 0.579,
    0.832, 0., 0.001, 0.977, 0.263, 0., 0., 0.055, 0.778,
    0.504, 0., 0.315, 0.654, 0.009, 0., 0.986, 0., 0.,
    0.589, 0.963, 0.96, 0., 0.007, 0.233, 0.085, 0.997, 0.001,
    0.224, 0.976, 0.001, 0.009, 0., 0.999, 0.001, 0., 0.028,
    0.013, 0.899, 0.752, 0.001, 0.007, 0.002, 0., 0.004, 0.713,
    0.006, 0.265, 0.096, 0.99, 0.005, 0., 0.001, 0.92, 0.,
    0.001, 0.991, 0.003, 0.36, 0.648, 0., 0.004, 0.006, 0.003,
    0.006, 0., 0.172, 0.926, 0.462, 0.23, 0.005, 0.003, 0.001,
    0., 0.872, 0.014, 0.711, 0.001, 0.867, 0.001, 0.916, 0.001,
    0.975, 0.987, 0.573, 0.628, 0.001, 0., 0.134, 0.72, 0.001,
    0.013, 0.024, 0.012, 0.118, 0.944, 0.158, 0.884, 0.897, 0.004,
    0.976, 0.199, 0.009, 0.708, 0., 0.03, 0.012, 0.618, 0.,
    0.001, 0., 0.021, 0., 0., 0.813, 0.001, 0.648, 0.011,
    0.001, 0.981, 0.017, 0.977, 0.058, 0.816, 0., 0., 0.,
    0.961, 0.935, 0., 0., 0.012, 0., 0.164, 0., 0.98,
    0., 0.909, 0., 0., 0.007, 0.005, 0.947, 0.807, 0.,
    0.001, 0.001, 0.982, 0.012, 0.081, 0.001, 0.961, 0.021, 0.001,
    0., 0.003, 0.935, 0.919, 0.979, 0.001, 0.482, 0.02, 0.008,
    0.007, 0.003, 0.011, 0., 0., 0., 0., 0.87, 0.,
    0.005, 0.021, 0.186, 0.997, 0.904, 0.006, 0.004, 0., 0.08,
    0.001, 0.001, 0.001, 0.143, 0.016, 0.995, 0.009, 0.716, 0.947,
    0.936, 0.001, 0.373, 0.857, 0.017, 0.866, 0.001, 0., 0.03,
    0.986, 0.965, 0., 0., 0., 0.898, 0.987, 0., 0.,
    0.001, 0., 0., 0.824, 0.989, 0.021, 0.036, 0., 0.965,
    0.576, 0.06, 0.021, 0.026, 0.4, 0.946, 0.004, 0.006, 0.004,
    0., 0.979, 0.005, 0.001, 0.874, 0.002, 0.998, 0., 0.965,
    0.005, 0.604, 0., 0.044, 0.939, 0., 0., 0.856, 0.,
    0.091, 0.821, 0., 0.682, 0., 0., 0.029, 0.996, 0.005,
    0.106, 0.88, 0.018, 0.59, 0.001, 0.487, 0.001, 0.166, 0.572,
    0.262, 0., 0.724, 0.175, 0.267, 0., 0.925, 0.963, 0.988,
    0.001, 0.002, 0.001, 0.014, 0.001, 0.9, 0.001, 0.835, 0.985,
    0.005, 0.04, 0., 0., 0.967, 0.983, 0.982, 0.001, 0.177,
    0.916, 0.733, 0.001, 0.001, 0.894, 0.001, 0.619, 0.97, 0.001,
    0.948, 0., 0.001, 0.864, 0.957, 0.108, 0.006, 0.002, 0.012,
    0.825, 0.102, 0., 0., 0., 0.999, 0., 0., 0.046,
    0.989, 0.027, 0., 0.053, 0., 0., 0.001, 0., 0.923,
    0.001, 0.006, 0.03, 0.783, 0.003, 0., 0.629, 0.41, 0.763,
    0.008, 0., 0.003, 0.983, 0.018, 0., 0.77, 0.93, 0.994,
    0.341, 0.88, 0.99, 0.987, 0., 0.96, 0.772, 0.002, 0.02,
    0.627, 0.004, 0.003, 0.996, 0.001, 0., 0.002, 0.154, 0.,
    0.002, 0.993, 0.002, 0.009, 0.004, 0., 0.001, 0.984, 0.,
    0.114, 0.001, 0.558, 0.827, 0.001, 0.56, 0.972, 0.439, 0.986,
    0.005, 0.984, 0.965, 0.693, 0.982, 0.012, 0., 0.006, 0.318,
    0.002, 0.277, 0., 0., 0.257, 0.001, 0.003, 0.001, 0.,
    0.001, 0., 0., 0.011, 0.001, 0.883, 0.753, 0.001, 0.003,
    0.099, 0., 0.004, 0., 0., 0.123, 0.002, 0.111, 0.002,
    0.911, 0.955, 0.001, 0.569, 0.954, 0.966, 0.842, 0., 0.,
    0., 0., 0.997, 0.054, 0.002, 0.788
  ];

  let newBinEdges = [0, 20, 30, 100];
  let newScores = [-10, -3, -2, -5];
  ebm.setModel(newBinEdges, newScores, 'LotFrontage');

  predictions = ebm.getProb();

  for (let i = 0; i < predictions.length; i++) {
    if (Math.abs(predictions[i] - expectedPred[i]) >= 0.01) {
      console.log(predictions[i], expectedPred[i], i);
    }
  }

  utils.unitTestAssert(
    'EBM setModel() once',
    () => ebm.getProb(),
    expectedPred,
    (t, r) => assert1dCloseTo(t, r, 0.01)
  );


  // Set model on a different feature

  expectedPred = [
    0.97, 0.912, 0.419, 1., 0., 0.729, 1., 1., 0.996,
    1., 0.899, 0.925, 1., 0.947, 0.808, 0.011, 0.695, 0.998,
    0.982, 0.001, 1., 0.992, 0.996, 0.918, 1., 0.646, 0.009,
    0.982, 1., 1., 0., 0.994, 0.923, 1., 1., 0.142,
    1., 1., 0.969, 0.611, 0.672, 1., 0.924, 0.884, 0.999,
    0.997, 1., 1., 0.938, 0.994, 0.98, 0.027, 0.99, 1.,
    0.993, 1., 1., 1., 0.992, 0.618, 0.02, 1., 0.904,
    0.946, 1., 0.119, 1., 1., 0.149, 0.988, 0.183, 0.361,
    0.993, 0.478, 1., 1., 0.982, 0.691, 0.991, 0.984, 0.022,
    0.697, 0.996, 0.997, 0.99, 0.97, 1., 0.958, 1., 0.962,
    0.999, 1., 0.996, 1., 0.024, 0.205, 0.858, 1., 0.921,
    0.663, 0.788, 0.312, 1., 1., 0.966, 0.997, 1., 0.989,
    1., 1., 0.608, 0.998, 0.001, 0.84, 0.996, 1., 0.851,
    0.959, 0.897, 0.998, 0.026, 0.002, 0.97, 0.932, 1., 0.996,
    0.965, 1., 0.998, 0.999, 0.708, 1., 0.906, 0.002, 0.525,
    1., 1., 0.002, 0.403, 0.996, 0.075, 1., 0.712, 0.999,
    0.301, 0.997, 0.183, 0.648, 0.498, 0.992, 1., 1., 0.845,
    0.954, 0.963, 1., 0.996, 0.938, 0.954, 1., 0.784, 0.053,
    0.905, 0.018, 1., 0.998, 0.999, 0.927, 1., 0.448, 0.995,
    0.207, 0.986, 0.306, 0.001, 0.919, 0.882, 0.016, 0.996, 0.295,
    0.991, 0.46, 1., 1., 1., 0.993, 0.989, 0.222, 0.773,
    0.945, 0.921, 0.957, 1., 0.513, 1., 0.995, 1., 1.,
    1., 0.935, 1., 0.996, 0.405, 0.996, 0.955, 0.748, 0.999,
    1., 1., 0.895, 0., 0.802, 0.999, 1., 0.011, 0.09,
    0.044, 0.003, 0.001, 0.999, 1., 0.998, 0.999, 0.027, 1.,
    0.995, 0.916, 0.788, 0.998, 1., 1., 0.988, 0.993, 0.99,
    0.883, 0.999, 0.992, 0.025, 0.999, 0.978, 1., 0.625, 0.999,
    0.991, 0.983, 0.001, 0.645, 0.999, 0.077, 0.037, 0.996, 0.004,
    1., 1., 0.918, 1., 0., 0.018, 0.817, 1., 0.991,
    1., 1., 0.54, 1., 0.955, 1., 0.928, 1., 0.995,
    1., 0.757, 1., 1., 0.922, 0.791, 1., 1., 1.,
    0.954, 0.096, 0.101, 0.997, 0.958, 0.997, 0.028, 1., 1.,
    0.456, 0.622, 0., 0.525, 0.999, 1., 1., 0.924, 1.,
    1., 1., 0.946, 0.152, 0.984, 0.933, 1., 0.999, 0.955,
    1., 0.587, 0.142, 0.999, 1., 1., 0.182, 0.216, 0.996,
    1., 0.857, 0.504, 0.435, 0.774, 1., 0.345, 0.751, 0.999,
    1., 0.998, 0.623, 0.999, 0.864, 0.888, 0.965, 0.702, 0.998,
    0.2, 0.196, 0.626, 0.998, 0.097, 0.057, 1., 0.839, 0.998,
    0.994, 0., 0.115, 1., 0.998, 0.028, 1., 1., 1.,
    0.987, 0.997, 1., 0.998, 0.565, 0.999, 1., 0.982, 0.998,
    1., 0.423, 0.984, 1., 0.965, 0., 0.1, 1., 0.311,
    0.074, 1., 0.979, 0.995, 0.989, 0.46, 0.96, 1., 0.587,
    1., 0.964, 1., 1., 0.935, 1., 1., 1., 1.,
    0.992, 1., 1., 1., 0.998, 0.996, 0.002, 0.992, 1.,
    0.979, 0.937, 0., 0., 1., 0.936, 0.984, 0.941, 0.001,
    0.969, 0.001, 0.008, 0.627, 0.962, 0.999, 1., 0.966, 0.296,
    1., 0., 0.37, 0., 0.006, 1., 0.982, 1., 0.983,
    0.999, 1., 0.93, 1., 1., 0.999, 0.999, 0.857, 0.915,
    0.661, 0.918, 1., 0.999, 0.982, 0.998
  ];

  ebm.setEditingFeature('MasVnrArea');
  ebm.setEditingFeature('LotFrontage');

  newBinEdges = [0, 20, 90, 100, 200, 300];
  newScores = [10, 5, 2, 5, 4, 4];
  ebm.setModel(newBinEdges, newScores, 'MasVnrArea');

  utils.unitTestAssert(
    'EBM setModel() on another feature',
    () => ebm.getProb(),
    expectedPred,
    (t, r) => assert1dCloseTo(t, r, 0.01)
  );

  // Set on the third feature

  expectedPred = [
    0.246, 0.047, 0.994, 1., 0.05, 0.022, 0.998, 1., 0.661,
    0.998, 0.041, 1., 1., 0.079, 0.98, 0., 0.029, 0.833,
    0.252, 0.016, 0.993, 0.441, 0.515, 0.089, 0.929, 0.009, 0.,
    0.419, 1., 1., 0.004, 0.424, 0.094, 0.912, 0.993, 0.001,
    0.969, 0.967, 0.207, 0.997, 0.021, 0.999, 0.095, 0.999, 0.852,
    0.719, 0.999, 0.998, 0.068, 0.999, 0.285, 0.244, 0.453, 0.996,
    0.391, 0.981, 0.922, 0.979, 0.374, 0.997, 0., 0.999, 1.,
    0.154, 0.982, 0.002, 0.991, 0.998, 0.002, 0.406, 0.001, 0.005,
    0.648, 0.009, 0.981, 0.999, 0.31, 0.018, 0.527, 0.224, 0.,
    0.019, 0.561, 0.78, 0.315, 0.293, 0.999, 0.098, 1., 0.174,
    0.88, 0.974, 0.654, 0.997, 0., 0.747, 0.028, 0.998, 0.109,
    0.017, 0.037, 0.006, 0.976, 0.924, 0.191, 0.794, 0.999, 1.,
    0.97, 0.98, 0.007, 0.664, 0., 0.064, 0.739, 0.997, 0.045,
    0.234, 0.04, 1., 0.234, 0.026, 0.214, 1., 0.997, 0.559,
    1., 0.906, 0.809, 0.886, 0.011, 0.998, 1., 0.019, 0.996,
    0.953, 0.999, 0., 0.003, 0.567, 0.481, 0.956, 0.966, 0.9,
    0.004, 0.712, 0.981, 0.019, 0.01, 0.364, 0.999, 0.998, 0.053,
    0.091, 0.11, 0.931, 0.694, 0.116, 0.152, 0.945, 0.017, 0.001,
    0.074, 0., 0.921, 0.68, 0.897, 0.109, 0.996, 0.01, 0.552,
    0.001, 1., 0.005, 0., 1., 0.999, 0.159, 0.772, 0.828,
    0.583, 0.011, 0.98, 0.994, 0.999, 0.999, 0.3, 0.001, 0.027,
    0.075, 1., 1., 0.949, 0.009, 0.991, 0.56, 0.996, 0.999,
    0.999, 1., 0.985, 0.529, 0.009, 0.547, 1., 0.972, 0.773,
    0.928, 0.953, 0.082, 0.092, 0.999, 0.893, 0.933, 0., 0.001,
    0.914, 0., 0., 0.823, 0.986, 0.708, 0.902, 0., 1.,
    0.63, 0.049, 0.037, 0.797, 0.987, 0.999, 0.463, 0.604, 0.449,
    0.059, 0.96, 0.51, 0., 0.868, 0.174, 0.996, 0.95, 0.933,
    0.547, 0.435, 0., 0.015, 0.834, 0.951, 0.305, 0.751, 0.,
    0.917, 0.999, 0.104, 0.997, 0., 0., 0.036, 0.993, 0.471,
    0.966, 1., 0.01, 0.994, 0.18, 0.995, 0.993, 0.957, 0.49,
    0.981, 0.973, 0.997, 0.976, 0.053, 0.026, 0.999, 0.955, 0.977,
    1., 0.001, 0.001, 0.809, 0.098, 0.819, 0., 0.999, 1.,
    0.004, 0.008, 0., 0.01, 0.936, 0.916, 0.965, 1., 0.96,
    1., 0.998, 0.995, 0.976, 0.232, 0.104, 0.996, 0.942, 0.996,
    1., 0.997, 0.974, 0.838, 1., 0.973, 0.002, 0.002, 0.704,
    0.998, 0.028, 0.011, 0.994, 0.029, 0.998, 0.992, 0.031, 0.922,
    0.995, 0.844, 0.95, 0.863, 0.05, 0.077, 0.219, 0.011, 0.858,
    0.003, 0.001, 0.017, 0.838, 0.001, 0., 0.997, 0.024, 0.698,
    0.653, 0., 0.002, 0.979, 0.81, 0., 0.999, 1., 0.967,
    0.405, 0.64, 0.95, 0.879, 0.937, 0.948, 0.997, 0.419, 0.745,
    0.998, 0.008, 0.387, 1., 0.113, 0., 0.001, 0.953, 0.99,
    0.001, 0.987, 1., 0.644, 0.434, 0.004, 0.102, 0.979, 0.015,
    0.962, 1., 0.995, 0.999, 1., 0.996, 1., 0.989, 0.98,
    0.368, 0.922, 1., 0.999, 0.658, 0.708, 0., 0.579, 0.993,
    0.998, 0.066, 0., 0., 0.975, 0.112, 0.336, 0.123, 0.,
    0.207, 0., 0., 0.021, 0.211, 0.845, 0.997, 0.119, 0.002,
    0.961, 0., 0.003, 0.001, 0.06, 0.977, 1., 0.933, 0.32,
    0.88, 1., 1., 0.993, 0.943, 0.903, 0.808, 0.058, 0.992,
    0.02, 0.992, 0.994, 0.865, 0.364, 0.826
  ];
  ebm.setEditingFeature('GrLivArea');

  newBinEdges = [0, 200, 900, 1000, 2000, 3000];
  newScores = [10, 5, 2, -5, -4, -4];
  ebm.setModel(newBinEdges, newScores, 'GrLivArea');

  utils.unitTestAssert(
    'EBM setModel() on the third feature',
    () => ebm.getProb(),
    expectedPred,
    (t, r) => assert1dCloseTo(t, r, 0.01)
  );


  // ebm.printData();

  console.log(`\n--- Finished testing ${name} ---\n`);

};

const testEBMClassifier2 = async () => {
  let curName = 'Update EBM with Python generated data';

  const featureURL = 'https://gist.githubusercontent.com/xiaohk/04b8e022d0744bee02a243e6e32cd8d2/raw/e7f40932b2db0bc47639028b5a6edeac5226b601/iow-house-ebm-binary.json';
  const sampleURL = 'https://gist.githubusercontent.com/xiaohk/04b8e022d0744bee02a243e6e32cd8d2/raw/4c3263a0778ed5ca752874045721eae763094647/iow-house-sample-binary.json';

  let result = await fetch(sampleURL);
  let sampleData = await result.json();

  result = await fetch(featureURL);
  let featureData = await result.json();

  let ebm = new myModule.EBM(featureData, sampleData, 'LotFrontage', true);

  // Initial model
  let expectedPred = [
    0.889, 0.003, 0.929, 0.002, 0.99, 0.317, 0.98, 0.912, 0.781,
    0.994, 0.023, 0.001, 0.942, 0.139, 0.042, 0.998, 0.006, 0.018,
    0.119, 0.012, 0.962, 0.245, 0.705, 0., 0.761, 0.443, 0.261,
    0.22, 0.999, 0.723, 0.039, 0.013, 0.093, 0.997, 0.121, 0.771,
    0.93, 0.001, 0.154, 0.962, 0.992, 0.983, 0.011, 0.009, 0.026,
    0.008, 0.307, 0.052, 0.996, 0.001, 0.247, 0.076, 0.989, 0.964,
    0.973, 0.323, 0.998, 0.695, 0.967, 0.98, 0.568, 0.516, 0.018,
    0.266, 0.975, 0.921, 0.001, 0.947, 0.992, 0.131, 0.995, 0.635,
    0.998, 0.992, 0.996, 0.154, 0.997, 0.054, 0.954, 0.996, 0.301,
    0.1, 0.523, 0.002, 0.973, 0.091, 0.022, 0.999, 0.969, 0.263,
    0.976, 0.204, 0.604, 0.019, 0.993, 0.002, 0.051, 0.051, 0.001,
    0.999, 0.921, 0.989, 0.589, 0.787, 0.005, 0.988, 0.965, 0.049,
    0.291, 0.017, 0.044, 0.001, 0.038, 0.95, 0.006, 0.002, 0.034,
    0.101, 0.894, 0.89, 0.992, 0.999, 0.999, 0.018, 0.941, 0.007,
    0.997, 0.988, 0.01, 0.371, 0.006, 0.561, 0.069, 0.997, 0.281,
    0.978, 0.124, 0.564, 0.038, 0.005, 0.094, 0.299, 0.036, 0.004,
    0.382, 0.077, 0.828, 0.01, 0.036, 0.093, 0.534, 0.998, 0.991,
    0.298, 0.951, 0.974, 0.033, 0.965, 0.29, 0.97, 0.002, 0.911,
    0.073, 0., 0.002, 0.986, 0.321, 0.01, 0.949, 0.984, 0.015,
    0.946, 0.08, 0.92, 0.312, 0.972, 0.231, 0., 0.02, 0.004,
    0.695, 0.004, 0.995, 0.94, 0.725, 0.937, 0.424, 0.083, 0.005,
    0.954, 0.003, 0.003, 0.075, 0.934, 0.979, 0.288, 0.005, 0.073,
    0.98, 0.938, 0.006, 0.959, 0.585, 0.009, 0.002, 0.003, 0.448,
    0.995, 0.192, 0.006, 0.04, 0.008, 0.029, 0.294, 0.985, 0.953,
    0.215, 0.996, 0.019, 0.012, 0.015, 0.93, 0.04, 0.177, 0.002,
    0.773, 0., 0.623, 0.999, 0.993, 0.371, 0.988, 0.996, 0.002,
    0.735, 0.831, 0.994, 0.008, 0.756, 0.996, 0.268, 0.999, 0.071,
    0.998, 0.961, 0.995, 0.967, 0.031, 0.047, 0.019, 0.943, 0.006,
    0.969, 0.966, 0.857, 0.985, 0.043, 0.052, 0.001, 0.918, 0.549,
    0.958, 0.004, 0.82, 0.004, 0.991, 0.021, 0.967, 0.977, 0.104,
    0.01, 0.396, 0.666, 0.997, 0.013, 0.004, 0.001, 0.996, 0.008,
    0.983, 0.989, 0.823, 0.994, 0.695, 0.989, 0.997, 0.815, 0.96,
    0.063, 0.991, 0.022, 0.904, 0.999, 0.004, 0.018, 0.023, 0.985,
    0.005, 0.002, 0.011, 0.278, 0.527, 0.99, 0.997, 0.017, 0.993,
    0.993, 0.997, 0.959, 0.003, 0.989, 0.979, 0., 0.023, 0.009,
    0.422, 0.03, 0.986, 0.007, 0.982, 0.984, 0.984, 0.46, 0.066,
    0.001, 0.984, 0.577, 0.042, 0.099, 0.002, 0.995, 0.025, 0.999,
    0.981, 0.976, 0.703, 0.054, 0.849, 0.028, 0.284, 0.585, 0.006,
    0.999, 0.849, 0.141, 0.001, 0.975, 0.951, 0.002, 0.005, 0.966,
    0.955, 0.952, 0.982, 0.979, 0.051, 0.951, 0.014, 0.981, 0.993,
    0.76, 0.006, 0.007, 0.969, 0.018, 0.343, 0.998, 0.985, 0.92,
    0.998, 0.965, 0.001, 0.011, 0.137, 0.008, 0.01, 0.001, 0.998,
    0.999, 0.706, 0.002, 0.743, 0.225, 0.021, 0.018, 0.113, 0.99,
    0.36, 0.014, 0.001, 0.004, 0.013, 0.017, 0.004, 0.993, 0.001,
    0.976, 0.058, 0.005, 0.973, 0.003, 0.029, 0.008, 0.013, 0.01,
    0.847, 0.68, 0.997, 0.802, 0.458, 0.822, 0.199, 0.989, 0.03,
    0.075, 0.998, 0.008, 0.022, 0.581, 0.043, 0.907, 0.023, 0.885,
    0.024, 0.006, 0.005, 0.976, 0.945, 0.014, 0.001, 0.997, 0.999,
    0.039, 0.004, 0.2, 0.968, 0.141, 0.602
  ];

  let predictions = ebm.getProb();

  for (let i = 0; i < predictions.length; i++) {
    if (Math.abs(predictions[i] - expectedPred[i]) >= 0.01) {
      console.log(predictions[i], expectedPred[i], i);
    }
  }

  utils.unitTestAssert(
    'EBM initial prediction',
    () => ebm.getProb(),
    expectedPred,
    (t, r) => assert1dCloseTo(t, r, 0.01)
  );

  console.log(`\n--- Finished testing ${curName} ---\n`);
};

testEBMClassifier();
testEBMClassifier2();
