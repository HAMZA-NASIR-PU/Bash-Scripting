#!/usr/bin/env bash

read -p "Enter password: " password

CHECK="true"

if ((${#password} < 8)); then
    echo "Password must be at least 8 characters."
    CHECK="false"
fi

if [[ ! "$password" =~ [[:digit:]] ]]; then
    echo "Password must contain a number."
    CHECK="false"
fi

if [[ "$password" =~ [[:space:]] ]]; then
    echo "Password must not contain spaces."
    CHECK="false"
fi

if [[ ! "$password" =~ [[:upper:]] ]]; then
    echo "Password must contain an Uppercase letter."
    CHECK="false"
fi

if [[ $CHECK == "true" ]]; then
    echo "Strong password."
fi

