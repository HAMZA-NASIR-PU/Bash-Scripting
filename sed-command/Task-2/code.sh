
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
echo -e "GET /health 200\nGET /api/login 500\nGET /api/metrics 200" | sed '/\/health\|\/metrics/d'
