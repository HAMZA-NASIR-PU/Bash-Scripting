# The following link defines what is a word boundary in a very precise way:
# https://www.hackerrank.com/challenges/matching-word-boundaries/problem



# A word boundary, in most regex dialects, 
# is a position between \w and \W (non-word char), 
# or at the beginning or end of a string if it begins 
# or ends (respectively) with a word character ([0-9A-Za-z_]).


# This is using POSIX character class [:alnum:] 
# that matches any single alphanumeric character, 
# which includes both alphabetic letters and numeric digits => [a-zA-Z0-9]
# Use single quotes for string in echo command, otherwise, ! sign gives error.
echo -e 'ERROR Something\nSomething ERROR\nXERRORY\nSome ERROR occurs\nSome !ERROR\nSome ERROR!\nAn !ERROR! takes place' | awk '$0 ~ /(^|[^[:alnum:]_])ERROR([^[:alnum:]_]|$)/'

### Output:
ERROR Something
Something ERROR
Some ERROR occurs
Some !ERROR
Some ERROR!
An !ERROR! takes place

echo -e 'ERROR Something\nSomething ERROR\nXERRORY\nSome ERROR occurs\nSome !ERROR\nSome ERROR!\nAn !ERROR! takes place' | grep -P "\bERROR\b"


echo -e 'ERROR Something\nSomething ERROR\nXERRORY\nSome ERROR occurs\nSome !ERROR\nSome ERROR!\nAn !ERROR! takes place' | awk 'tolower($0) ~ /(^|[^[:alnum:]_])ERROR([^[:alnum:]_]|$)/'
### Output:
ERROR Something
Something ERROR
Some ERROR occurs
Some !ERROR
Some ERROR!
An !ERROR! takes place


############## gawk

echo -e "ERROR something\nXERRORY\nThis line has ERROR inside" | gawk '/\yERROR\y/ { print $0 }'


echo -e "ERROR something\nXERRORY\nThis line has ERROR inside" | gawk '/\<ERROR\>/ { print $0 }'

################################################## Following are tested on gitbash.

echo -e "HELLO WORLD\nWORLDHELLO\nWORLD HELLO\nWORLD HELLOWORLD" | awk '/\<HELLO/ {print;}'
HELLO WORLD
WORLD HELLO
WORLD HELLOWORLD


echo -e "HELLO WORLD\nWORLDHELLO\nWORLD HELLO\nWORLD HELLOWORLD" | awk '/HELLO\>/ {print;}'
HELLO WORLD
WORLDHELLO
WORLD HELLO


echo -e "HELLO WORLD\nWORLDHELLO\nWORLD HELLO\nWORLD HELLOWORLD" | awk '/\<HELLO\>/ {print;}'
HELLO WORLD
WORLD HELLO


echo "
ERROR something
XERRORY
This line has ERROR inside
" | grep -P "\bERROR\b"
