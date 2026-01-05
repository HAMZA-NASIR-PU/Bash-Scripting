
# Detect 5xx errors but ignore /health

grep -E '5[0-9][0-9]$' app.log | grep -Ev '/health'

