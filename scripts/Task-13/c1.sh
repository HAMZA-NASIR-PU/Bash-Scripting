#!/usr/bin/env bash

echo "Parent process ID = $$, BASHPID = $BASHPID"

VAR="parent"

echo "Before child: $VAR"

(
    # Shell variables are inherited by subshells but not by external process.
    echo "Child process ID = $$, BASHPID = $BASHPID"
    echo "Inside child: $VAR"
    (
        echo "Sub-child process ID = $$, BASHPID = $BASHPID"
    )
)

# Remains Same
echo "After child: $VAR"

