
# Identify failed logins excluding service accounts Scenario

grep -Ev 'Failed password for (root|daemon|syslog) ' app.log


# PCRE way -> (?!) => negative lookahead assertion. \b -> word boundary
grep -P 'Failed password for (?!root\b|daemon\b|syslog\b)[a-zA-Z][a-zA-Z0-9_-]* from' app.log

grep -P 'Failed password for (?!root\b|daemon\b|syslog\b)[A-za-z0-9_-]+' app.log

# The general format is X(?!Y), which matches "X" only if it is not immediately followed by "Y". 

# A lookahead does NOT consume text, it only checks what comes next at that exact position. 
# To understand it better, the following command is not giving any output.

grep -P 'Failed password for (?!root\b|daemon\b|syslog\b) from' app.log
