
# Iterate over log files

mapfile -t logs < <(find /var/log -type f 2>/dev/null)

for file in "${logs[@]}"; do
    echo "$file";
done


