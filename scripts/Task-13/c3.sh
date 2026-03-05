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
echo "In main process: $BAR"

