
# NOTE: tr command does not work on a line. It works on a character (letter, digit, whitespace, escape characters like \n \r \t);

# Normalize Line Endings

# Convert a file with mixed Windows (\r\n) and Unix (\n) line endings to pure Unix-style (\n) endings.

# Generate a file.
# printf "Line one with Unix ending\nLine two with Windows ending\r\nLine three with Windows ending\r\n" > mixed_file.txt

# cat -v mixed_file.txt
# You should see ^M at the end of Windows-style lines.

cat mixed_file | tr -d '\r' | cat -v

# Using sed command
cat mixed_file | sed $'s/\r//' | cat -v # ANSI-C style quotes required.
