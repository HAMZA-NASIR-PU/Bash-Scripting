# Web Server Log Analyzer

1. Count total requests.

2. Count requests per IP.

3. Count HTTP status codes.

4. Sum total bytes sent.

5. Find top 3 requested URLs.

### IP Address regex

awk '$1 ~ /^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/ {print $1}' access.log 