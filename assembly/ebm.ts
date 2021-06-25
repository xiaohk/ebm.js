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

  featureNames: Array<string>;
  featureTypes: Array<string>;

  contBinEdges: Array<Array<f64>>;
  contScores: Array<Array<f64>>;
  catBinEdges: Array<Array<string>>;
  catScores: Array<Array<f64>>;

  constructor(featureNames: Array<string>, featureTypes: Array<string>,
    contBinEdges: Array<Array<f64>>, contScores: Array<Array<f64>>,
    catBinEdges: Array<Array<string>>, catScores: Array<Array<f64>>
  ) {
    this.featureNames = featureNames;
    this.featureTypes = featureTypes;
    this.contBinEdges = contBinEdges;
    this.contScores = contScores;
    this.catBinEdges = catBinEdges;
    this.catScores = catScores;
  };

  printName(): string {
    // console.log('hehe');
    return this.featureTypes[0];
  }

  printBinEdge(): Array<f64> {
    trace('here', 1, this.contBinEdges.length);
    trace('here', 1, this.catBinEdges.length);
    trace('here', 1, this.contBinEdges[1].length);

    return this.contBinEdges[0];
  }
}

// We need unique array id so we can allocate them in JS
export const Int32Array_ID = idof<Array<i32>>();
export const Float64Array_ID = idof<Array<f64>>();
export const Float64Array2D_ID = idof<Array<Array<f64>>>();
export const StringArray2D_ID = idof<Array<Array<string>>>();
export const StringArray_ID = idof<Array<string>>();
export const StringInt32Map_ID = idof<Map<string, i32>>();
