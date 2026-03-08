#!/usr/bin/env bash

for i in {1..50}; do

    if ((i % 2 == 0)); then
        type="EVEN"
    else
        type="ODD"
    fi

    if ((i % 5 == 0)); then
        echo "$i -> $type MULTIPLE OF 5"
    else
        echo "$i -> $type"
    fi

done

