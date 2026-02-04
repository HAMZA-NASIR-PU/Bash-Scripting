
# Delete empty and whitespace-only lines


# Scenario:
# Broken log formatter is adding junk lines.

# Goal:
# Remove empty and whitespace-only lines.


# Those blank / space-only lines:

# break parsers

# confuse grep

# hide real signal

# Your job: remove them completely.

sed '/^[[:space:]]*$/d' app.log

