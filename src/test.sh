#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run a Node.js assertion targeting app.js in the same directory
node -e "
const greet = require('${SCRIPT_DIR}/app.js');
const result = greet('World');
const expected = 'Hello World !';
if (result !== expected) {
  console.error('✘ test failed');
  process.exit(1);
}
console.log('✔ test passed');
"
