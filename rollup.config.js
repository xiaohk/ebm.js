import { nodeResolve } from '@rollup/plugin-node-resolve';
import { base64 } from 'rollup-plugin-base64';
import { terser } from 'rollup-plugin-terser';

export default
[
  {
    input: 'src/index-cjs.js',
    output: {
      file: 'dist/cjs/ebm.js',
      format: 'cjs'
    },
    plugins: [],
  },
  {
    input: 'src/index-mjs.js',
    output: {
      file: 'dist/mjs/ebm.js',
      format: 'es'
    },
    plugins: [
      nodeResolve(),
      base64({ include: '**/*.wasm' }),
    ],
  },
  {
    input: 'src/index-mjs.js',
    output: {
      file: 'dist/mjs/ebm.min.js',
      format: 'es'
    },
    plugins: [
      nodeResolve(),
      base64({ include: '**/*.wasm' }),
      terser()
    ],
  }
];
