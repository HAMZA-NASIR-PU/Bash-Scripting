
# Range-based log extraction (incident window)

# incident-timeline reconstruction

# An incident happened between two log markers:

# You want only the logs between START and END
# — nothing before, nothing after.



sed -n '/START INCIDENT/,/END INCIDENT/p' app.log


# Print only ERROR lines inside the range.

sed -n '/START INCIDENT/,/END INCIDENT/ {
  /ERROR/p
}' app.log


