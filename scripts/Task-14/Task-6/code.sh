#!/usr/bin/env bash

# mkdir "Task 1" "Task 2" "Task 3" "Task 4"

for file in Task\ *; do
    # Replace space with dash
    new_name="${file// /-}"
    # echo "$file --> $new_name"
    # Rename the file
    mv "$file" "$new_name"
done

##### Another way

for file in "Task "*; do

    # Remove "Task " from the start of the string.
    number="${file#Task }"
    echo "$file --> $number"
done


##### Another way

for file in "Task "*; do

    new_name=$(echo "$file" | sed 's/ /-/g')
    echo "$file --> $new_name"
    
done

