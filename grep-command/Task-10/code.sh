
# Identify failed logins excluding service accounts Scenario

grep -Ev 'Failed password for (root|daemon|syslog) ' app.log


# PCRE way -> (?!) => Lookaround construct. 
grep -P 'Failed password for (?!root\b|daemon\b|syslog\b)[a-zA-Z][a-zA-Z0-9_-]* from' app.log
