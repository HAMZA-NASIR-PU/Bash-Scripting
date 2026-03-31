
# Split STDOUT and STDERR into separate files
ls /etc /nothing /usr /fake > ok.log 2> error.log

# Merge STDOUT and STDERR into one file
ls /etc /nothing /usr /fake > all.log 2>&1

# Redirect STDOUT to a File but Still Show STDERR on Screen
ls /etc /nothing /usr /fake 1>ok.log

# Redirect STDERR to a File but Let STDOUT Display
ls /etc /nothing /usr /fake 2>error.log

# Silence Errors Completely
ls /etc /nothing /usr /fake 2>/dev/null

# Silence STDOUT Completely (but keep STDERR visible)
ls /etc /nothing /usr /fake > /dev/null

# Capture STDOUT in a Variable & STDERR in a File
output=$(ls /etc /nothing /usr /fake 2>stderr.log)

