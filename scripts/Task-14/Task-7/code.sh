#!/bin/bash

# Understand the reading of a file in a while loop via pipe and via redirection operator.

counter=0;

# Reading a file via redirection operator.
while read -r line; do
    ((counter++));
done < app.log

printf 'Total Lines: %s\n' $counter 

counter=0;

cat app.log | while read -r line; do
    echo 'Reading a line inside sub-shell';
    ((counter++));

done

# This will print 0 because the while loop runs inside a sub-shell.
printf 'Total lines: %s\n' $counter; # 0



