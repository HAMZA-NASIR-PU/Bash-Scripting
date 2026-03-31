
# Convert lowercase → uppercase

# Convert all lowercase letters (a–z) to uppercase (A–Z) while keeping digits and special characters unchanged.

cat > log_sample.txt <<EOF
error: disk usage at 95%
warning: memory threshold exceeded
user hamza logged in from 192.168.1.15
EOF

cat log_sample.txt | tr 'a-z' 'A-Z'

cat log_sample.txt | tr '[[:lower:]]' '[[:upper:]]'

