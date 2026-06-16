
# Batch process disk usage alerts

mapfile -t bigFiles < <(find /var -type f -size +500M 2>/dev/null)

for file in "${bigFiles[@]}"; do
    ls -lh "$file";
done

echo "Total big files: ${#bigFiles[@]}";


