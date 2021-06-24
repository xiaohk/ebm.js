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


// We need unique array id so we can allocate them in JS
export const xArrayID = idof<Array<f64>>();
export const yArrayID = idof<Array<f64>>();
export const wArrayID = idof<Array<f64>>();
export const newXArrayID = idof<Array<f64>>();
