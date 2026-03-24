#!/usr/bin/env bash

# touch file.txt config.json app.log
# mkdir "scripts"

dir="$1"

# if [ ! -d "$dir" ]; then
#     echo "Directory not found!"
#     exit 1
# fi

if test ! -d "$dir" ; then
    echo "Directory not found!"
    exit 1
fi

for item in "$dir"/*; do

    echo "Checking: $item"

    # if [ -e "$item" ]; then
    #     echo "  Exists"
    # else
    #     echo "  Does not exist"
    #     continue
    # fi

    if test -e "$item"; then
        echo "  Exists"
    else
        echo "  Does not exist"
        continue
    fi

    # if [ -f "$item" ]; then
    #     echo "  - Regular file"
    # elif [ -d "$item" ]; then
    #     echo "  - Directory"
    # else
    #     echo "  - Other type"
    # fi

    if test -f "$item"; then
        echo "  - Regular file"
    elif test -d "$item"; then
        echo "  - Directory"
    else
        echo "  - Other type"
    fi

    [ -r "$item" ] && echo "    - Readable" # test -r "$item"
    [ -w "$item" ] && echo "    - Writeable" # test -w "$item"
    [ -x "$item" ] && echo "    - Executable" # test -x "$item"

    echo -e "\n"
done
