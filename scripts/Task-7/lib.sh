#!/bin/bash

call_function() {
    echo "Inside call function."
    echo "BASH_SOURCE[@] = ${BASH_SOURCE[@]}"
}

echo "PID: $$"
