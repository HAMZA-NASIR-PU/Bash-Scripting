
# Remove everything except alphabets
echo "He!llo 123 !!! @@@" | tr -cd 'a-zA-Z'

# Replace every non-digit with *
echo "Room 45B, Floor#3" | tr -c '0-9' '*'

# Collapse everything except letters into one delimiter
echo "Hi---There!!!123" | tr -cs 'A-Za-z' '\n'

# Replace everything except lowercase letters with a dash
echo "Hello_World 123" | tr -c 'a-z' '-'

# Replace everything except whitespace with .
printf 'Hello\nWorld 123\tABC' | tr -c '[:space:]' '.'

# Get PATH env of running docker container.
docker inspect <container-id> | jq '.[0].Config.Env[0]' | tr -d '"' | cut -d= -f2

