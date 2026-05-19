
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


