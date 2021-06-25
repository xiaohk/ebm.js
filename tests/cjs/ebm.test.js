const myModule = require('../../dist/cjs');
const fetch = require('node-fetch');
const utils = require('./utils');

const unitTestEqual = utils.unitTestEqual;

const name = 'searchSortedLowerIndex';

console.log(`\n--- Start testing ${name} ---`);

// Load the data file

const testEBM = async () => {
  const sampleUR = 'https://gist.githubusercontent.com/xiaohk/bd5cec77de8a2d6c806226fbdf916a1b/raw/15abe75572567353f2d5704ad42b246178c04a1c/iow-house-sample.json';
  const featureURL = 'https://gist.githubusercontent.com/xiaohk/e47a3752ed2aa6fd3ab2f16e23858d5d/raw/5139d1cba88cbf180f65301e0454a7fd992aa926/iow-house-ebm.json';

  let result = await fetch(sampleUR);
  let sampleData = await result.json();

  result = await fetch(featureURL);
  let featureData = await result.json();

  let ebm = new myModule.EBM(featureData, sampleData);

  ebm.printData();

};

testEBM();


