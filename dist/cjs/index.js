'use strict';

const fs = require('fs');

const loader = require('@assemblyscript/loader');

const imports = { /* imports go here */ };
const wasmModule = loader.instantiateSync(
  // Use untouched.wasm for development, use optimized.wasm for distribution/external use
  fs.readFileSync('build/untouched.wasm'),
  imports
);

// Import the helper functions
const wasm = wasmModule.exports;
const __pin = wasm.__pin;
const __unpin = wasm.__unpin;
const __newArray = wasm.__newArray;
wasm.__getArray;


/**
 * JS wrapper for the searchsorted() from WASM, which finds the index where
 * inserting `value` into `sorted` would keep `sorted` in order.
 * @param {[number]} sorted a sorted array (ascending order)
 * @param {number} value a number to insert into `sorted`
 * @returns index to insert `value` ito `sorted`
 */
const __searchSortedLowerIndex = (sorted, value) => {
  let xPtr = __pin(__newArray(wasm.xArrayID, sorted));
  let index = wasm.searchSortedLowerIndex(xPtr, value);
  __unpin(xPtr);
  return index;
};

module.exports = wasmModule.exports;

// Add new functions
module.exports.__searchSortedLowerIndex = __searchSortedLowerIndex;
