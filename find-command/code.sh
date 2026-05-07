
##### Lab Setup
mkdir -p find-lab/{app/{logs,config},data/{2024,2025},backup,tmp}
cd find-lab

# Create Sample files

touch app/logs/app.log
touch app/logs/error.log
touch app/config/app.conf
touch app/config/db.conf

touch data/2024/file1.txt
touch data/2024/file2.txt
touch data/2024/File3.txt
touch data/2025/file1.txt
touch data/2025/report.txt

touch backup/file.txt
touch tmp/file.txt
touch tmp/random.log


tree .

#################################### LEVEL 1 ###########################################

# Find all file.txt files:
find . -name "file.txt"

# Find all .log files:
find . -name "*.log"

# Find all .conf files:
find . -name "*.conf"

# Find File.txt even if case differs:
find . -iname "file.txt"

# Find only files inside app/:
find app -type f

# Find only directories:
find . -type d

# Find all .log files inside logs folder:
find app/logs -name "*.log"

# Find files modified in last 1 day:
find . -type f -mtime -1
# Above may not always return the expected results.
find . -type f -mmin -1440

# Find and delete .log files:
find . -name "*.log" -delete # Desctuctive

# Find empty files:
find . -type f -empty

# Find all file.txt across system:
find . -name "file.txt"

# Find files bigger than 0 bytes:
find . -type f -size +0c # c is unit of byte

# Find files owned by current user:
find . -user $(whoami)



