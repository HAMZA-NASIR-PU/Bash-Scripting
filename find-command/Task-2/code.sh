
# Find the project structure of your Angular project by excluding some folders
# like node_modules, .git, dist, .vs, .vscode etc.


find . -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) -prune -o -type f -print


# For each item:
#   Is it a directory AND excluded?
#      YES → prune (stop, don't check further)
#      NO  → Is it a file?
#               YES → print it
#               NO  → do nothing

