
# Read output from another command

# ps -eo comm -> Show only the executable name of every running process.

mapfile -t processes < <( ps -eo comm | tail -n +2 )

printf '%s\n' "${processes[@]}";

echo "Total processes: ${#processes[@]}";

