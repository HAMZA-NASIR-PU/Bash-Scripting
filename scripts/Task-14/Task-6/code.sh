#!/usr/bin/env bash

# mkdir "Task "{1..20}".txt"

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

    new_name=$(echo "$file" | sed 's/ /-/g') # $(echo "$file" | tr ' ' '-')
    echo "$file --> $new_name"
    
done

