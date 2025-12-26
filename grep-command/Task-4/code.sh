
# Find DENY TCP entries for common admin ports (22, 80, 443)
# Wrong Attempt
grep -E '^DENY TCP.*(22|80|443)' app.log

# Correct
grep -E '^DENY TCP .*:(22|80|443)$' app.log

# Interesting but serious case
grep -E '^DENY TCP.*:[22|80|443]$' app.log


# A character class matches exactly ONE character, chosen from: 2   |   8   0   4   3
# Duplicates are ignored. This is equivalent to: [0-8|]

# Square brackets match characters.
# Parentheses match patterns.


# Question:

# Why is [80|443] wrong for port matching?

# Answer:

# Because character classes match a single character, not a multi-digit number, leading to false positives.

# [80|443] -> 0 8 | 4 3
