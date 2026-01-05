
# Detect suspicious sudo usage outside business hours

# Your company policy:

# * Sudo should not be used between 00:00–05:00

# * Security team asks for a quick audit

# But that command is also giving me logs from 05:00 to 05:59.
grep -E '^[A-Z][a-z]{2} [ 0-9][0-9] 0[0-5]:[0-5][0-9]:[0-5][0-9] .* sudo:' app.log

# Correct solution.
grep -E '^[A-Z][a-z]{2} [ 0-9][0-9] 0[0-4]:[0-5][0-9]:[0-5][0-9] .* sudo:' app.log



