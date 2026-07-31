#!/usr/bin/env bash

# Demonstrates the difference between:
#   1. Reading a file using input redirection (<)
#   2. Reading a file through a pipeline (|)
#
# In Bash, each command in a pipeline executes in a subshell (by default).
# Therefore, variables modified inside the pipeline are not visible afterwards.

counter=0

# ------------------------------
# Example 1: Input Redirection
# ------------------------------
while read -r line; do
    ((counter++))
done < app.log

printf 'Total lines (redirection): %d\n' "$counter"

counter=0

# ------------------------------
# Example 2: Pipeline
# ------------------------------
cat app.log | while read -r line; do
    echo "Reading a line inside a subshell..."
    ((counter++))
done

# The counter remains unchanged because the loop ran in a subshell.
printf 'Total lines (pipeline): %d\n' "$counter"