#!/usr/bin/env bash

export VAR="parent"
echo "Before child: $VAR"
(
    echo "Inside child, before changing VAR = $VAR"
    VAR="child"
    echo "Inside child, after changing VAR  = $VAR"
)

echo "After child: $VAR"
