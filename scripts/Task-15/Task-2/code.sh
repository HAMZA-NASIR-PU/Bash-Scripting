#!/usr/bin/env bash

read -p "Enter password: " username

if [ -z "$username" ]; then
    echo "Username is empty."
else
    echo "Username is not empty."
fi

if [ -n "$username" ]; then
    echo "Username is not empty."
else
    echo "Username is empty."
fi

if [ "${#username}" -gt 8 ]; then
    echo "Length of username is greater than 8: ${#username}"
else
    echo "Length of username is not greater than 8: ${#username}"
fi

if [[ "$username" =~ ^[[:alpha:]]+$ ]]; then
    echo "Username contains only alphabets."
else
    echo "Username does not contain only alphabets."
fi

if [[ "$username" =~ [[:digit:]]$ ]]; then
    echo "Username ends with a number."
else
    echo "Username does not end with a number."
fi

if [[ "$username" == admin* ]]; then
    echo "Username starts with admin."
else
    echo "Username does not start with admin."
fi


