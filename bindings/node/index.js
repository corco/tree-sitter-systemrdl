const fs = require('node:fs');
const path = require('node:path');
const root = path.join(__dirname, '../..');

const binding = require('node-gyp-build')(root);

try {
  binding.nodeTypeInfo = require('../../src/node-types.json');
} catch {}

Object.defineProperty(binding, 'nodeTypeInfo', {
  configurable: true,
  enumerable: true,
  get() {
    delete binding.nodeTypeInfo;
    try {
      binding.nodeTypeInfo = require('../../src/node-types.json');
    } catch {}
    return binding.nodeTypeInfo;
  },
});

module.exports = binding;
