#!/usr/bin/env bash

for file in *; do

    ext="${file##*.}"

    if [[ $ext == "txt" ]]; then
        echo "$file -> TEXT FILE"
    elif [[ $ext == "sh" ]]; then
        echo "$file -> BASH SCRIPT"
    elif [[ $ext == "json" ]]; then
        echo "$file -> JSON FILE"
    else
        if [[ -f "$file" ]]; then
            echo "$file is a file."
        elif [[ ! -f "$file" ]]; then
            echo "$file is not a file."
        fi
    fi

done

