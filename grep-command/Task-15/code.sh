

https://www.redhat.com/en/blog/manipulating-text-sed-grep

# Extract log levels
grep -Eo '\[([A-Z]+)\]' app.log

# By removing the brackets
sed -E 's/.*\[([A-Z]+)\].*/\1/' app.log

# Log analysis
grep -Eo '\[[A-Z]+\]' app.log | sort | uniq -c

# Via awk command
awk -F'[][]' '{print $2}' app.log

echo 'abc[xyz]def' | awk -F'[][]' '{print $2}'

echo '[CURRENT_DATE][THREAD_ID][PROCESS_NAME]Some random text here' | awk -F '[][]' '{print $2}'


### Extract the date part.
grep -Po '\d{4}:\d{2}:\d{2}' app.log

### Extract the time part.
grep -Po '\d{2}:\d{2}:\d{2}' app.log



