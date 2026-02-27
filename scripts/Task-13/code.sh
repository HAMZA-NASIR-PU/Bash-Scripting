#!/bin/bash

# Changing environment variable in a script

echo "Before changing PATH = $PATH"

PATH="HELLO WORLD"

echo "After changing PATH = $PATH" # Changes only persist during script execution

# All changes are now gone.

# Note: When you source that script, then $PATH variable will be modified.

