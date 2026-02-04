
# Comment out config entries (safe rollback move)


# A feature flag just caused trouble in prod.


# You must disable it, but:

#  don’t delete it

#  don’t break formatting

#  make it reversible

# So you comment it out.


sed 's/^enable_feature=true/#enable_feature=true/' config.yml


# The “address + command” sed is for production:

# Avoid double-commenting
sed '/^enable_feature=true/s/^/#/' config.yml

# On lines that start with enable_feature=true, substitute the start of the line with #.



