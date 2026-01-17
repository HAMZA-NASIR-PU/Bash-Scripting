# How could you use grep to list the 5 letter palindromes in the file /usr/share/dict/words 
# where that file has exactly and only on word listed on each of its numerous lines? 
# And a palindrome being a word that's spelled the same forwards and backwards, 
# e.g. noon being an example of a four letter palindrome.

# Concept of capturing groups.

grep -P '^([a-zA-Z])([a-zA-Z])([a-zA-Z])\2\1$' /usr/share/dict/words


# AWK solution
awk -f palindrome.awk app.log

