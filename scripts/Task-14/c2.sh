#!/bin/bash

for ((i=1; i<=20; i++)) do
    if (( i%3 == 0 && i % 5 == 0 )) then
        echo "FIFTEEN"
    elif (( i % 3 == 0 )) then
        echo "THREE"
    elif (( i % 5 == 0 )) then
        echo "FIVE"
    else
        echo "$i"
    fi
done


