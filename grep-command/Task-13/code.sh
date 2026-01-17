# Infrastructure audit:

# * Hostnames must follow company convention


# Rules

# Must start with prod-

# Service name = lowercase letters only

# Instance number = exactly 2 digits

# Goal

# Match only valid production hostnames

grep -E '^prod-[a-z]+-[0-9]{2}$' app.log

