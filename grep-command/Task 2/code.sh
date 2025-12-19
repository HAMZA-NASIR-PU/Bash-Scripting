
# Match lines that start with ERROR but NOT ERROR:

# Think like this: Regex does not exclude things — it includes precisely.

grep -E '^ERROR ' app.log

grep -E '^ERROR[[:space:]]' secure.log
