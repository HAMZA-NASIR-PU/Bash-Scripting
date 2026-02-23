#!/bin/bash

for file in *.txt; do
    sed -i 's/foo/bar/g' "$file"
done
echo "All foo are replaced with bar"
