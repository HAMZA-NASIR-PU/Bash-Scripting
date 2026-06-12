## Operator precedence like -type, -o, -prune and brackets

# This will not prune resources folder.
find . \( -type d -name "*resources*" -o -name "*bin*" -prune \) -o -print

# This will show the proof.
grep 'resources' <(find . \( -type d -name "*resources*" -o -name "*bin*" -prune \) -o -print)

# This will prune both resources and bin folder
find . \( -type d \( -name "*resources*" -o -name "*school*" \) -prune \) -o -print

# Better version of above command:
find . \( -type d \( -name "resources" -o -name "school" \) -prune \) -o -print


# (
#     type is directory
#     AND
#     (
#         name matches *resources*
#         OR
#         name matches *school*
#     )
#     AND
#     prune
# )
# OR
# print


find .   \( -type d \( -name "*resources*" -o -name "*bin*" -o -name "*git*" -o -name "*target*" \) \
 -exec echo "PRUNED: {}" \; -prune \)   -o -print