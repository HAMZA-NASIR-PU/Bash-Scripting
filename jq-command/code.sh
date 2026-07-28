

jq '.' employees.json

jq '.company' employees.json

jq '.employees[0]' employees.json

jq '.employees[0].name' employees.json

jq '.employees[]' employees.json

jq '[].employees[]]' employees.json

jq '.employees[] | select(.department == "Engineering")' employees.json

jq '.employees[] | select(.department == "Engineering" and .salary > 90000)' employees.json

jq '.employees[] | .skills | contains(["Java"])' employees.json

jq '.employees[] | select(.skills | contains(["Java"]))' employees.json

jq '[.employees[] | . as $e | $e.skills[] | {skill: ., employee: $e.name}] | group_by(.skill) | map({skill: .[0].skill, employees: [.[].employee]})' employees.json



