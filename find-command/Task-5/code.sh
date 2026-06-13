## Operator precedence like -type, -o, -prune and brackets

# This will not prune resources folder.
find . \( -type d -name "*resources*" -o -name "*bin*" -prune \) -o -print

# This command only prints bin folder
find . \( -type d -name "*resources*" -o -name "*bin*" -exec echo "{}" \; \)
# Output:
# ./bin

# But the following command will print all those folders/files that have bin in their path.
find . -path "*bin*"


# This will show the proof.
grep 'resources' <(find . \( -type d -name "*resources*" -o -name "*bin*" -prune \) -o -print)

# This will prune both resources and bin folder
find . \( -type d \( -name "*resources*" -o -name "*bin*" \) -prune \) -o -print

# Better version of above command:
find . \( -type d \( -name "resources" -o -name "bin" \) -prune \) -o -print


# (
#     type is directory
#     AND
#     (
#         name matches *resources*
#         OR
#         name matches *bin*
#     )
#     AND
#     prune
# )
# OR
# print


find .   \( -type d \( -name "*resources*" -o -name "*bin*" -o -name "*git*" -o -name "*target*" \) \
 -exec echo "PRUNED: {}" \; -prune \) -o -print

find . \( -type d \( -name "*resources*" -o -name "*bin*" -o -name "*git*" \
 -o -name "*target*" -o -name "*test*" -o -name "*database-backup*" \) \) \
  \( -exec echo "PRUNED: {}" \; -prune \) -o -print


# This command will just print ./bin and ./src/main/resources and nothing else.
# So, its better to use -o -print at the end to print other stuff.
find . \( -type d \( -name "*resources*" -o -name "*bin*" \) \) -prune

