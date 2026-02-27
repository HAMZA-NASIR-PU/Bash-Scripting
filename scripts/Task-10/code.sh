#!/bin/bash

# Concept of Dynamic Scoping in Bash

count=0

increment() {
    count=$((count + 1))
}

main() {
    local count=2
    echo "Before calling increment: $count"
    increment
    echo "After calling increment: $count"
}

main
echo "After calling increment: $count"
