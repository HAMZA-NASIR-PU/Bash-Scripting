
# Find applications restarting repeatedly (possible crash loop)

# Detect lines where "Application started" occurs more than one in sequence.


# Senior-level thinking: grep cannot maintain state across lines.

awk -f detect_crash_loop app.log
