
# Delete noisy log lines (health-check killers)


# Your app logs are flooded with useless noise:

# You want to remove every line that contains /health.

# Not hide.
# Not filter temporarily.
# Delete.

sed '/\/health/d' app.log

# case-insensitive
sed '/\/health/Id' app.log

# Delete multiple noisy endpoints.
sed '/\/health\|\/metrics/d' app.log
