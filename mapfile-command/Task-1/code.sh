
# Load a list of servers into an array.

cat > servers.txt <<EOF
web01
web02
web03
db01
db02
EOF

mapfile -t servers < servers.txt

echo "${servers[@]}"

printf '%s is a server.\n' "${servers[@]}"

for server in "${servers[@]}"; do
    echo "[$server]";
done

for server in "${servers[*]}"; do
    echo "[$server]";
done


