const test = require('node:test');
const assert = require('node:assert/strict');

const language = require('./');

test('loads the grammar binding', () => {
  assert.equal(language.name, 'systemrdl');
  assert.ok(language.language);
});
