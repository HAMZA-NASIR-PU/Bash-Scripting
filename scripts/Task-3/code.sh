#!/bin/bash

# Passing arguments to a function.

greet() {
    echo -e "\n=================== CALLING greet ==================\n"
    echo "Number of arguments: $#"

    echo "All arguments individually:"
    for name in "$@"; do
        echo "Hello, $name!"
    done
}

echo "Number of arguments passed to script: $#"

# Calling the function with multiple arguments
greet Alice Bob John "Charlie Brown"

