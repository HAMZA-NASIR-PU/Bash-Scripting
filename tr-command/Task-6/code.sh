
# Delete Specific Character Ranges (e.g., Delete All Digits)

# Use tr -d to delete all digits 0–9 from input while leaving everything else untouched.

cat > app_logs.txt <<EOF
User hamza logged in at 10:33 with PID 221
Disk usage at 95% on /dev/sda1
CPU spike detected: 98% -- CRITICAL
Request ID: 987654321 arrived from 192.168.1.50
EOF

cat app_logs.txt | tr -d '[[:digit:]]' # tr -d '0-9'


