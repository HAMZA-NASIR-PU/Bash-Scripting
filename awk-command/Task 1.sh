# File Setup

echo -e "John 25\nSara 30\nAli 22\nNoor 28" > people.txt
echo -e "ID Name Salary\n1 John 5000\n2 Sara 7000\n3 Ali 5500\n4 Noor 7200" > salary.txt

# Print the whole file
awk '{print}' people.txt

# Print only first column
awk '{print $1}' people.txt

# Print both name and age with custom separator.
awk '{print "Name: ", $1, "| Age: }, $2' people.txt

