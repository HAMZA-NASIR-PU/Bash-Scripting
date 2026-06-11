
# Find the project structure of your spring boot application.

# Run it in src/main/com/example/project

find . -type d

# .
# ./auth
# ./auth/jwt
# ./config
# ./config/paymentGateway
# ./config/properties
# ./config/serialize
# ./config/storage
# ./config/storage/s3
# ./config/thymeleaf
# ./controller
# ./dto
# ./enums
# ./exception
# ./models
# ./models/enums
# ./repository
# ./response
# ./seeder
# ./service
# ./service/impl
# ./storage
# ./storage/local
# ./storage/s3
# ./swagger
# ./util

# This command gives a warning:

find . -type d -maxdepth 1

# find: warning: you have specified the global option -maxdepth after the argument -type, but global options are not positional, i.e.,
# -maxdepth affects tests specified before it as well as those specified after it.  Please specify global options before other arguments.
find . -maxdepth 1 -type d

# .
# ./auth
# ./config
# ./controller
# ./dto
# ./enums
# ./exception
# ./models
# ./repository
# ./response
# ./seeder
# ./service
# ./storage
# ./swagger
# ./util

# Put all *.java files in a file

find src -name "*.java" > sources.txt

# Then compile them via javac command:
javac -cp "./lib/*" -d ./bin @sources.txt


# Find all java files
find ./src -name "*.java"

# Find all properties file in a spring boot project
find ./src -name "*.properties"




