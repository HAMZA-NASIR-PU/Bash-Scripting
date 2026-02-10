
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


# Change db port from 5432 to 3306

sed -i.bak '/^db.port/s/5432/3306/' app.conf

