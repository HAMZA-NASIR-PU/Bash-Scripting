
# Show only failed SSH login attempts from Dec 11.

grep -E '^Dec 11 .*Failed password' app.log

# According to regex101: Match step 65
grep -E '^Dec 11 .* sshd\[[0-9]+\]: Failed password$' syslog.log


# The above command is doing more backtracking then the following command.


# The following command has some good performance:
# According to regex101: Match step 40
grep -E 'Dec 11 [^[]* sshd\[[0-9]+\]: Failed password$' app.log

# More better performance: Match step 30
grep -E 'Dec 11 [^[]*\[[0-9]+\]: Failed password$' app.log

# Show of Dec 10 and 11

grep -E '^Dec (10|11) .*Failed password' app.log

# Using only grep (even with extended regex), you CANNOT reliably extract
# from Dec 11 onward” in a general or scalable way. For that we need awk too
# grep alone cannot handle date ranges like ‘from Dec 11 onward
# Since grep is regex-based and not field-aware, I would switch to awk for numeric comparison.

# Show all failed login attempts from Dec 11 and onward.

awk '$1 == "Dec" && $2 >= 11 && $0 ~ /Failed password/' app.log

# Get all logs of "2025-12-24".
awk '{split($1,arr,"T"); if(arr[1] == "2025-12-24") print $0}' /var/log/auth.log

# Splitting based on regex.
awk '{split($1,arr,"[T+]"); if(arr[1] == "2025-12-24") print arr[1], arr[2], arr[3]}' /var/log/auth.log