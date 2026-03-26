#!/usr/bin/env bash

read -p "Enter first number: " a
read -p "Enter second number: " b

if [[ ! "$a" =~ ^[[:digit:]]+$ ]]; then
    echo "First number is invalid."
fi

if [[ ! "$b" =~ ^[[:digit:]]+$ ]]; then
    echo "Second number is invalid."
fi

echo "Both inputs are valid."
echo "Comparison"
echo -e '\n'

if [ "$a" -eq "$b" ]; then
    echo "$a is equal to $b."
fi

if [ "$a" -ne "$b" ]; then
    echo "$a is not equal to $b."
fi

if [ "$a" -gt "$b" ]; then
    echo "$a is greater than $b."
fi

if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b."
fi

if [ "$a" -ge "$b" ]; then
    echo "$a is greater than or equal to $b."
fi

if [ "$a" -le "$b" ]; then
    echo "$a is less than or equal to $b."
fi


