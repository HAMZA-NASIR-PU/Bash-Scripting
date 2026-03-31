
# Normalize Whitespace by Collapsing Repeated Spaces/Tabs

# Collapse all consecutive spaces and tabs into a single space.

cat > messy_spaces.txt <<EOF
ERROR     Disk      Usage     95%
User      hamza        logged    in
CPU      Load:      98%       Critical
PID      221        Started    at     10:33
EOF

cat messy_spaces.txt | tr -s ' '

# Collapse repeated colons :::: → : in a PATH-like string:
echo "usr::::bin::local::sbin" | tr -s ':'