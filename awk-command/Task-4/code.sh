
# Iterate $PATH variable in awk

awk -v path="$PATH" 'BEGIN { n=split(path,arr,":"); for (i=1;i<=n;i++) print arr[i]; }'

