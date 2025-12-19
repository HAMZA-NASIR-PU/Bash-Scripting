# https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/

# GNU grep commands can also be run on git bash.
# grep default behaviour is BRE (Basic Regular Expressions).

# "ERROR" is also a regex.
grep "ERROR" app.log

# Case-insensitive
grep -i "error" app.log

# Exact error locations (Debugging with line numbers.)
grep -n "ERROR" app.log

# Monitoring and reporting (Quick metric)
grep -c "ERROR" app.log

# Matching for full word
grep -w "ERROR" app.log

# Search across multiple files (Microservice logs)
grep "ERROR" *.log

# Exclude matching lines
grep -v "ERROR" app.log

# Match only lines starting with error
grep "^ERROR" app3.log

# Matching lines ending with a pattern
# If a character has special meaning in regex, escape it when you want it literally
grep "\.js$" app4.log

# You want surrounding log lines.
# -C -> Context
grep -C 2 "ERROR" app.log

grep -C 2 "ERROR" app5.log

grep -C 2 "ERROR" app6.log


grep -A 3 "ERROR" app.log   # After
grep -B 3 "ERROR" app.log   # Before

# Recursive + pipeline filtering
# You are searching a Spring Boot project 
# for hardcoded passwords but excluding .git.

# . means current directory.
# -R -> Search recursively through directories (Recursive search with symlink dereferencing)
grep -R "password" . --exclude-dir=.git

# ps -> process status
# The ps aux command is a tool to monitor processes running on your Linux system. 
# A process is associated with any program running on your system.
ps aux | grep java | grep -v grep

# Word-boundary using regex
# -E -> Extened REGEX
grep -E '(^|[^[:alnum:]_])ERROR([^[:alnum:]_]|$)' app.log
# -P -> PCRE
grep -P '\bERROR\b' app.log


# Match any line that contains ERR, followed by zero or more of any characters
grep "ERR.*" app7.log

# Line must starts with ERR
grep "^ERR.*" app7.log


# | `grep -E`           | Extended regex                      |
# | `grep -P`           | Perl regex (lookaheads/lookbehinds) |
# | `grep -w`           | Whole-word matching                 |
# | `grep --color=auto` | Visual clarity                      |
# | `grep -l / -L`      | File-level searching                |


