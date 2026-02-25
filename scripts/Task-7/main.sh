#!/bin/bash

echo "In main.sh: BASH_SOURCE[0] = ${BASH_SOURCE[0]}"
echo "In main.sh: BASH_SOURCE[1] = ${BASH_SOURCE[1]}"

echo "PID: $$"
echo -e "\n\n"

source lib.sh
call_function
