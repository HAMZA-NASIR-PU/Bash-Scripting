
# Replace : with newline — Parse PATH-like strings

# Convert a colon-separated string (like $PATH) into one entry per line for readability or processing.

echo "$PATH" | tr ':' '\n'

awk -v path="$PATH" 'BEGIN { n=split(path, arr, ":"); for(i=1;i<=n;i++) { print arr[i]; } }'

awk -v path="$PATH" 'BEGIN { n=split(path, arr, ":"); for(i=1;i<=n;i++) { print arr[i]; } }' | wc -l

echo "$PATH" | tr ':' '\n' | wc -l

