
# Some commands that I use daily in my Spring Boot project

# By the way, there is no need of using -r flag in last command.
find . -name "*.java" | xargs grep -l "DTO" | xargs grep -rL "public class" 2>/dev/null

find ./src/main/java/com/example/demo/dto -name "*.java" | xargs ls -la

find ./src/main/java/com/example/demo/models -name "Daily*.java" -exec grep -H -A 3 "@OneToMany" --color=auto {} +

find ./src/main/java/com/example/demo/models -iname "Daily*.java" -exec echo "***{}***" \; -exec cat {} \;

find ./src/main/java/com/example/demo/models \( -iname "WeeklySchedule.java" -prune \) -o \( -iname "Event.java" -o -iname "Weekly*.java" \) -exec \
echo "********{}" \; -exec cat {} \;

# Above command in a well-organized way:
find ./src/main/java/com/example/demo/models \( -iname "WeeklySchedule.java" -prune \) -o \( -iname "Event.java" -o -iname "Weekly*.java" \) \
\( -exec echo "***{}***" \; -exec cat {} \; \)


