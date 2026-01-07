
# Detect 5xx errors but ignore /health

grep -E '5[0-9][0-9]$' app.log | grep -Ev '/health'


# Using negative lookahead of PCRE
grep -P 'GET /(?!health).* 5\d\d$' app.log

# \d -> Single digit.

# Better Performance
grep -P 'GET /(?!health)[^ ]+ 5\d\d$' app.log

