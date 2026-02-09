
# Print only ERROR lines (pager survival skill)

# You don’t want:
# INFO
# WARN
# DEBUG

# You want ONLY ERROR, immediately.

sed -n '/ERROR/p' app.log

echo -e "INFO\nERROR\nINFO" | sed -n '/ERROR/p'

sed -n '/ERROR/Ip' app.log

sed -n '/ERROR/s/^/[ERROR] /p' app.log

