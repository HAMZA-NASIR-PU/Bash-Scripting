#!/usr/bin/env bash

# Complex Pipeline Monitoring Script

set -euo pipefail

cat access.log | grep 500 | awk '{print $1}' | sort | uniq -c
echo "${PIPESTATUS[@]}"
echo "Report generated"

