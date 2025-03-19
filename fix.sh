#!/bin/bash

set -eo pipefail

SCRIPT_ROOT=$(dirname $0)/third_party

#!/bin/bash
echo "start"
#find $SCRIPT_ROOT -type f -print0 | xargs -0 dos2unix
#find $SCRIPT_ROOT -regex ".*\.\(jpg\|gif\|png\|jpeg\)" -type f -print0 | xargs -0 dos2unix
find $SCRIPT_ROOT -regex ".*\.\(sh\|ac\)" -type f -print0 | xargs -0 dos2unix

echo "end"
