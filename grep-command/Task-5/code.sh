
# Find users whose login shell is NOT /bin/bash

# But that command did not exclude
grep -E '/bin/bash$' app.log

# Correct solution
grep -E -v '/bin/bash$' app.log

# Senior-level thinking

awk -F: '$7 !~ /\/bin\/bash$/' app.log

awk -F: '$7 !~ "/bin/bash$"' app.log


# PCRE solution
grep -P '(?<!/bin/bash)$' app.log