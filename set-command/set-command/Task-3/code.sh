#!/usr/bin/env bash

# Pipeline fails

set -euo pipefail
# set -o pipefail

grep "ERROR" non_existing_file.log | sort

## Without using `set -o pipefail`,
# it returns 0 value.
echo $?
echo "Log scan completed"
