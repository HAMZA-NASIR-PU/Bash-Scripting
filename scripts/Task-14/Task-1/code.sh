#!/usr/bin/env bash

# Concept of globbing in bash keyword [[

while read -r line; do

    if [[ "$line" == INFO* ]]; then
        echo "[OK] ${line#INFO }"
    elif [[ "$line" == ERROR* ]]; then
        echo "[CRITICAL] ${line#ERROR }"
    elif [[ "$line" == WARN* ]]; then
        echo "[WARNING] ${line#WARN }"
    else
        echo "[UNKNOWN] $line"
    fi

done < app.log

