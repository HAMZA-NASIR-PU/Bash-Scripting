#!/usr/bin/env bash

echo "Parent process ID = $$, BASHPID = $BASHPID"

VAR="parent"

echo "Before child: $VAR"

(
    # Simple variables are not inherited.
    # That variable is created for the child process.
    VAR="child"
    echo "Child process ID = $$, BASHPID = $BASHPID"
    echo "Inside child: $VAR"
)

# Remains Same
echo "After child: $VAR"

