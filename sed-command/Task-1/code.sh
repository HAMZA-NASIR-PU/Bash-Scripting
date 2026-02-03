
# Surgical replacement (classic outage fix)


# You’re on-call.
# An app is failing because it’s still pointing to an old database host.

# Your job:
# Replace every occurrence of
# old-db.internal → new-db.internal
# in-place, safely.

# -i => in-place

sed -i 's/old-db.internal/new-db.internal/g' app.conf

# For taking backup of the old app.conf file.
sed -i.bak 's/old-db.internal/new-db.internal/g' app.conf

# Sed does not think in “words”.
# It thinks in streams of characters.

echo 'abcdERRORXYZ' | sed 's/ERROR/WARN/'

echo 'fooERRORbar ERROR bar' | sed 's/ERROR/WARN/g'

# sed is perfect for:

# * log corruption fixes
# * redactions
# * partial token edits
# * emergency cleanup

