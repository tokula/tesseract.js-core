#!/bin/bash

set -eo pipefail

SCRIPT_ROOT=$(dirname $0)

# verify Emscripten version
emcc -v
echo "dos2unix"
sudo apt-get update
sudo apt-get install dos2unix
echo "!! YOLO !!"
$SCRIPT_ROOT/fix.sh
echo "123"
$SCRIPT_ROOT/build.sh
echo "456"
$SCRIPT_ROOT/fix.sh
echo "789"
$SCRIPT_ROOT/build.sh