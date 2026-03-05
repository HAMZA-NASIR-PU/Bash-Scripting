#!/bin/bash

for i in {1..3}; do
    (
        echo "Worker $i running in BASHPID: $BASHPID and \$$: $$"
        sleep 2
    ) &
done

wait
