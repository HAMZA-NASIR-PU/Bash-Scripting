
# Detect abnormal SSH login patterns

# Security team suspects brute-force SSH attacks.

# Policy:
# * More than 5 failed SSH logins from the same IP
# * Within the log file (simple batch audit)

# Goal: Detect IPs with more than 5 failed SSH login attempts


grep -E 'sshd.*Failed password' app.log \
| grep -Eo 'from [0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' \
| awk '{print $2}' \
| sort \
| uniq -c \
| awk '$1 > 5'

