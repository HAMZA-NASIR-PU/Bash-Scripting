# sshd means secure shell daemon

# Find failed root login attempts coming from any IP.
grep -E 'Failed password for root from' app.log


# Ensures SSh daemon logs
grep -E 'sshd\[[0-9]+\]: Failed password for root from' app.log


# See in /var/log/auth.log file => Auth attempts file for ubuntu
# gdm-password -> Local desktop login.
grep -E 'password' /var/log/auth.log
