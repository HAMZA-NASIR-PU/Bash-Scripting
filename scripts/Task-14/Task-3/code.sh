#!/usr/bin/env bash

# touch script.sh notes.txt image.png deploy.sh data.txt config.json
# mkdir scripts

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

