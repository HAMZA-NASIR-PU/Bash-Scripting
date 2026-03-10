#!/usr/bin/env bash

attempt=1
max_attempts=5

while ((attempt <= max_attempts)); do

    result=$((RANDOM % 3))

    if ((result == 0)); then
        echo "Attempt $attempt success"
        break
    else
        echo "Attempt $attempt failed"
    fi

    ((attempt++))

done

if ((attempt > max_attempts)); then
    echo "Operation failed after $max_attempts attempts."
fi

