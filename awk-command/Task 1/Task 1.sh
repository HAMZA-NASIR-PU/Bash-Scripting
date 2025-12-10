# File Setup

echo -e "John 25\nSara 30\nAli 22\nNoor 28" > people.txt
echo -e "ID Name Salary\n1 John 5000\n2 Sara 7000\n3 Ali 5500\n4 Noor 7200" > salary.txt

# Print the whole file
awk '{print}' people.txt

# Print only first column
awk '{print $1}' people.txt

# Print both name and age with custom separator.
awk '{print "Name: ", $1, "| Age: }, $2' people.txt

# Print line numbers
awk '{print NR, $0}' people.txt

# Skip header line using NR > 1
awk 'NR > 1 {print $2, $3}' salary.txt

# Print lines where age > 25.
awk '$2 > 25' people.txt

# Print people whose name start with 'A'
awk '$1 ~ /^A/' people.txt

# Ignore case and print people with 'n' in their name.
awk 'tolower($1) ~ /n/' people.txt

# Filter salaries greater than 6000
awk 'BEGIN {print "ID", "Name", "Salary"} NR > 1 { if($3 > 6000) print }' salary.txt
awk 'NR > 1 && $3 > 6000' salary.txt
awk 'NR > 1 && $3 > 6000 {print $2, $3}' salary.txt

# Print only first and second line. => NF represents only number of fields in the currently processed line.
awk 'NR == 1 || NR == NF' people.txt

# Print the first and last line
awk 'NR==1 {print} {last=$0} END {print last}' people.txt

# Increase salary by 10%
awk 'NR > 1 {print $1, $2, $3*1.10}' salary.txt

# Calculate total salary. By default value of sum is 0.
awk 'NR>1 {sum+=$3} END {print "Total Salary: ", sum}' salary.txt

# Calculate average salary
awk 'NR>1 {sum+=$3; count++} END {print "Average Salary: ", sum/count}' salary.txt

# Print max and min salary
awk 'NR==2 {max=$3; min=$3} NR>2 {if($3>max) max=$3; if($3<min) min=$3} END {print "Max: ", max, " | Min: ", min}' salary.txt

# Print formatted output with headers
awk 'BEGIN {print "Name\tSalary"} NR>1 {print $2 "\t" $3}' salary.txt
awk 'BEGIN {OFS="\t"; print "Name","Salary"} NR > 1 {print $2, $3}' salary.txt

# Change field separator (use : as delimiter)
echo -e "John:25\nSara:30\nAli:22\nNoor:28" > colon.txt
awk -F: '{print $1, $2}' colon.txt
echo -e "John:25\nSara:30\nAli:22\nNoor:28" | awk 'BEGIN {FS=":"; OFS=" "} {print $1, $2}'

# Use BEGIN for block headers
awk 'BEGIN {print "People List: "} {print NR, $1, $2} END {print "Total: ", NR, "records"}' people.txt

# Pretty print a table
awk 'BEGIN {printf "%-10s %-10s\n", "Name", "Age"} {printf "%-10s %-10s\n", $1, $2}' people.txt

# Join two files (by name)
awk 'NR==FNR {a[$1]=$2; next} {print $2, a[$2]}' people.txt salary.txt
awk 'BEGIN {print "Name Age Salary"} NR==FNR {a[$1]=$2;next} FNR > 1 {print $2, a[$2], $3}' people.txt salary.txt

# Find top salary
awk 'NR>1 && $3>max {max=$3; name=$2} END {print "Top earner:", name, "with", max}' salary.txt

# Show people older than 25 with formatted message
awk '$2>25 {printf "%s is %d years old\n", $1, $2}' people.txt


# Print unique names
echo -e "1 Alice 90\n2 Bob 80\n3 Alice 95\n4 Charlie 85\n5 Bob 88" > file.txt
awk '{count[$2]++} END {for (val in count) if (count[val]==1) print val}' file.txt

echo -e "1 Alice 90\n2 Bob 80\n3 Alice 95\n4 Charlie 85\n5 Bob 88" | awk '{count[$2]++} END {for (val in count) if (count[val]==1) print val}'

# By default Record Separator(RS) is newline (\n). To check it:
awk 'RS ~ /\n/ {print "TRUE"}' people.txt
