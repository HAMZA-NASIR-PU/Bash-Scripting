#!/usr/bin/awk -f

# Extract the full timestamp inside brackets

# By using sed command: sed -E 's/.*(\[.*\]).*/\1/' access.log | tr -d '[]'
# sed -E 's/.*\[(.*)\].*/\1/' access.log
# grep -o '\[.*\]' access.log --color=auto

# Bash Way:

#while read -r line; do 
#    l="${line#*[}"; 
#    l="${l%]*}";  
#    echo "$l"; 
#done < access.log

# awk way:





