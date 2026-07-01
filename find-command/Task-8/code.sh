
# Find all the configuration and log files isnide the /var folder that are modified within the last 24 hours.

find /var -type f -mtime 0 | grep -E '\.(conf|yml|log|hash|json)$'

