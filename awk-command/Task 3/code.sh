
# Extract SQL Queries
awk '/org.hibernate.SQL/ { in_sql=1; next } /^[0-9]{4}-[0-9]{2}-[0-9]{2}T/ { in_sql=0 } in_sql { print }' springboot2.log

# Getting date part from UTC timestamp from springboot1.log
awk 'NR > 13 && NR < 18 {split($1, arr, "T"); print arr[1]}' springboot1.log
