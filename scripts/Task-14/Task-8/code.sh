#!/bin/bash

# printf '1 Alice 90\n2 Bob 80\n3 Alice 95\n4 Charlie 85\n5 Bob 88\n' > file.txt

declare -A name_counts

FILE="$1"

while read -r line_num name rest; do
    # Skip empty lines
    [[ -z "$name" ]] && continue
    
    # Increment the count for this name
    ((name_counts["$name"]++))
done < "$FILE"

# 4. Print the final counts
echo "--- Name Counts ---"
for name in "${!name_counts[@]}"; do
    echo "$name: ${name_counts[$name]}"
done
