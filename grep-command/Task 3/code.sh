
# Show only failed SSH login attempts from Dec 11.

grep -E '^Dec 11 .*Failed password' app.log

# Show of Dec 10 and 11

grep -E '^Dec (10|11) .*Failed password' app.log

# Using only grep (even with extended regex), you CANNOT reliably extract
# from Dec 11 onward” in a general or scalable way. For that we need awk too
# grep alone cannot handle date ranges like ‘from Dec 11 onward
# Since grep is regex-based and not field-aware, I would switch to awk for numeric comparison.

# Show all failed login attempts from Dec 11 and onward.

awk '$1 == "Dec" && $2 >= 11 && $0 ~ /Failed password/' app.log
