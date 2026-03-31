

# Keep ONLY letters, digits, spaces, and newlines

# Use tr -cd to delete the complement set (everything not in your allowed set).

cat > messy.txt <<EOF
ERROR!!! Disk-Usage: 95% @ /dev/sda1
User: hamza_nasir logged-in (id=221) from 192.168.1.15!!
Alert#443: CPU spike --> 98%!!! ***CRITICAL***
EOF


cat messy.txt | tr '[[:alnum:]] \n' 

# Keep only letters (extract human-readable text)
cat messy.txt | tr -cd '[:alpha:]\n'

