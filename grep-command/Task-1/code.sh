# Extended regex alternation (logical OR) |

# Find only ERROR and WARN lines.
grep -E 'WARN|ERROR' app.log

# Iterate throgh all log files

grep -E 'WARN|ERROR' *.log
