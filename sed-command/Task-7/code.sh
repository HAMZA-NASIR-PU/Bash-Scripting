
# Redact secrets from logs (security & compliance)

# Your logs accidentally contain secrets:

# You must share these logs with:

# teammates

# vendors

# tickets

# postmortems

# But tokens must be removed.

# Not deleted lines.
# Not partial masking.
# Redacted safely.

sed 's/token=[^ ]*/token=REDACTED/g' app.log

# That command will not work due to that + is not a quantifier in
# BRE. It is a prt of ERE(extended regex).
sed 's/token=[^ ]+/token=REDACTED/g' app.log


echo 'user=a token=abc123 token=def456' \
| sed 's/token=[^ ]*/token=REDACTED/g'


sed 's/\(token\|apikey\|password\)=[^ ]*/\1=REDACTED/g' app.log

# Using extended regex
sed -E 's/(token|apikey|password)=[^ ]*/\1=REDACTED/g' app.log


# Making it case-insensitive.
sed -Ei 's/(token|apikey|password)=[^ ]*/\1=REDACTED/gI' app.log

# Clean, production-grade SRE version.
sed -Ei 's/\b(token|apikey|password)=\S+/\1=REDACTED/gI' app.log

# Combine with Task 6
sed -n '/START INCIDENT/,/END INCIDENT/ {
  s/token=[^ ]*/token=REDACTED/g
  p
}' app.log


