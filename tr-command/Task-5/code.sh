
# Replace : with newline — Parse PATH-like strings

# Convert a colon-separated string (like $PATH) into one entry per line for readability or processing.

echo "$PATH" | tr ':' '\n'

awk -v path="$PATH" 'BEGIN { n=split(path, arr, ":"); for(i=1;i<=n;i++) { print arr[i]; } }'

# OR
awk -v path="$PATH" 'BEGIN { n=split(path, arr, ":"); for(i in arr) { print arr[i]; } }'

awk -v path="$PATH" 'BEGIN { n=split(path, arr, ":"); for(i=1;i<=n;i++) { print arr[i]; } }' | wc -l

echo "$PATH" | tr ':' '\n' | wc -l

# The following works but order of string is disturbed.
awk -v path="$PATH" 'BEGIN { n=split(path,arr,":"); for(i in arr) { n=split(arr[i],arr2,"/"); str1="";  for(j in arr2) { str1 = str1 arr2[j] "->"; } print str1;  } }'


# Tree-like structure.
awk -v p="$PATH" '
BEGIN {
    split(p, dirs, ":")
    for (i = 1; i <= length(dirs); i++) {
        split(dirs[i], seg, "/")
        for (j = 1; j <= length(seg); j++)
            printf("%*s%s\n", j*2, "", seg[j]) # It indents each segment by j * 2 spaces, then prints seg[j].
        print ""
    }
}
'

# Don't use length(array) in mawk, since it is used in GNU awk.

