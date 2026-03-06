#!/bin/bash

export BAR="bar"
echo "In main process: $BAR"
(
    echo "In child process: $BAR"
    BAR="foo"
    (
        echo "In sub-child process: $BAR"
    )
)

# Remains Same
echo "In main process: $BAR"

