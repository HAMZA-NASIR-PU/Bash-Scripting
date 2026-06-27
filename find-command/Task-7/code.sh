
# Suppose you want to send the project structure to the chatgpt

find ./src/main/java/com/example/demo -type f

# To copy all the dtos that strat with the word 'event' -> Use -iname for case-insensitive.

find ./src/main/java/com/example/demo/dto/ -iname "event*"

# To copy all the code of java to a clipboard so that you can paste them easily in chatgpt.
find ./src/main/java/com/example/demo/dto/ -iname "Event*" -type f -print0 | while IFS= read -r -d '' file; do     echo "===== $file =====";     cat "$file";     echo; done | clip


find ./src/main/java/com/school/portal/dto/ -iname "Event*" -type f -print0 | tr '\0' '\n'


### CRUCIAL COMMANDS FOR SPRING BOOT PROJECT

find ./src/main/java/com/school/portal/service/ -type f -iname "event*" -exec echo "***{}***" \; -exec cat {} \; | clip
find ./src/main/java/com/school/portal/controller/EventController.java -exec echo "***{}***" \; -exec cat {} \; | clip
find ./src/main/java/com/school/portal/models/ \( -type f -iname "*scheduler*" -o -iname "event.java" \) -exec echo "***{}***" \; -exec cat {} \; | clip
find ./src/main/java/com/school/portal/dto/ -type f -iname "EventRequestDTO*" -exec echo "***{}***" \; -exec cat {} \; | clip
find ./src/main/java/com/school/portal/models/ \( -type f -iname "*scheduler*" -o -iname "event.java" \) -exec echo "***{}***" \; -exec cat {} \; | clip


### CRUCIAL COMMANDS FOR ANGULAR PROJECT


