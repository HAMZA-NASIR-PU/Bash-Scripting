#!/bin/bash

# Compare $@ and $*

echo "All args: $@";

for arg in "$*"; do
        echo "[$arg]";
done

printf '\n\n';

for arg in "$@"; do
        echo "[$arg]";
done

