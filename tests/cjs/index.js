// The entry file of all unite tests.
const myModule = require('../..');

// --- Testing ---
console.log('Start testing...');

// --- Testing searchsorted() ---
require('./searchSortedLowerIndex.test');

console.log('\nPassed all the tests!');
