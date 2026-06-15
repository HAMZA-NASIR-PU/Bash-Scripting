
# Find the project structure of your Angular project by excluding some folders
# like node_modules, .git, dist, .vs, .vscode etc.


find . -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) -prune -o -type f -print


# For each item:
#   Is it a directory AND excluded?
#      YES → prune (stop, don't check further)
#      NO  → Is it a file?
#               YES → print it
#               NO  → do nothing

# Refactored command

find . \
    \( \
        -type d \( \
                -name node_modules -o \
                -name .git -o \
                -name dist -o \
                -name .vs -o \
                -name .vscode -o \
                -name .angular \
            \) -prune \
    \) -o \
    -type f -print



find . -type d \( -name .git -o -name .idea -o -name target -o -name bin  \) -prune -o -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.avif" -o -name "*.webp" \) -prune -o  -type f -print


# This will display all typescript files in a Angular project.
find . \( -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) \) -prune \( -exec echo "PRUNED {}" \; \) -o \( -type f -name "*.ts" -print \)

# To count total typescript files in a Angular project
find . \( -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) \) -prune -o \( -type f -name "*.ts" -print \) | wc -l


# To print pruned folder names.
find . \( -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) \) -prune \( -exec echo "PRUNED:{}" \; \)


# But the above command will return wrong output if you just place
# -o after -prune option
find . \( -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) \) -prune -o \( -exec echo "PRUNED:{}" \; \)

# To print all files of admin module.
find . \( -type d \( -name node_modules -o -name .git -o -name dist -o -name .vs -o -name .vscode -o -name .angular \) \) -prune -o \( -type f -path "*admin*" -print \)



