const myModule = require('../../dist/cjs');
const fetch = require('node-fetch');
const utils = require('./utils');

const unitTestEqual = utils.unitTestEqual;

const name = 'searchSortedLowerIndex';

console.log(`\n--- Start testing ${name} ---`);

// Load the data file

const testEBM = async () => {
  const sampleUR = 'https://gist.githubusercontent.com/xiaohk/bd5cec77de8a2d6c806226fbdf916a1b/raw/e9d34209eb6ad86a140bfd786d2ec876b15369d9/iow-house-sample.json';
  const featureURL = 'https://gist.githubusercontent.com/xiaohk/e47a3752ed2aa6fd3ab2f16e23858d5d/raw/72544975ca0c798f3156976dafad56fdc67288ae/iow-house-ebm.json';

  let result = await fetch(sampleUR);
  let sampleData = await result.json();

  result = await fetch(featureURL);
  let featureData = await result.json();

  console.time('init ebm');
  let ebm = new myModule.EBM(featureData, sampleData);
  console.timeEnd('init ebm');

  console.time('print data');
  ebm.printData();
  console.timeEnd('print data');

};

testEBM();


