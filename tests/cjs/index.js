// The entry file of all unite tests.
const myModule = require('../..');

// --- Testing ---
console.log('Start testing...');

// --- Testing searchSortedLowerIndex() ---
require('./searchSortedLowerIndex.test');

// --- Testing EBM class ---
require('./ebm.test');

console.log('\nPassed all the tests!');
