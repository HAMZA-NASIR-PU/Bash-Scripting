
# Extract only crash lines that contain numeric exit codes. 
grep -E 'crashed with exit code [0-9]+' service.log

# Ensure line truly indicates a crash (colon-safe)
grep -E ':[[:space:]]crashed with exit code [0-9]+' service.log

