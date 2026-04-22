
# Remove whitespaces from start and end of a string.

# Consider the following use case:

# docker inspect spring-boot-app | jq '.[0].Config.Env'
# [
#   "RDS_HOST=database-1.rdsinstanceid.us-east-1.rds.amazonaws.com",
#   "RDS_USERNAME=myrdsusername",
#   "RDS_PASSWORD=mypassowrd",
#   "RDS_DB=mydb",
#   "PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
#   "JAVA_HOME=/opt/java/openjdk",
#   "LANG=en_US.UTF-8",
#   "LANGUAGE=en_US:en",
#   "LC_ALL=en_US.UTF-8",
#   "JAVA_VERSION=jdk-21.0.10+7"
# ]

# I want to pass all envs to a bash array.

# docker inspect spring-boot-app | jq '.[0].Config.Env' | tr -d '[]' | tr -d '",' | awk 'NF {gsub(/^[[:space:]]+|[[:space:]]+$/, ""); print}'
# RDS_HOST=database-1.rdsinstanceid.us-east-1.rds.amazonaws.com
# RDS_USERNAME=myrdsusername
# RDS_PASSWORD=mypassowrd
# RDS_DB=mydb
# PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# JAVA_HOME=/opt/java/openjdk
# LANG=en_US.UTF-8
# LANGUAGE=en_US:en
# LC_ALL=en_US.UTF-8
# JAVA_VERSION=jdk-21.0.10+7


# ******************** Final Solution ******************** 
# mapfile envs -t < <(docker inspect spring-boot-app | jq '.[0].Config.Env' | tr -d '[]' | tr -d '",' | awk 'NF {gsub(/^[[:space:]]+|[[:space:
# ]]+$/, ""); print}')

# Using sed command

# docker inspect spring-boot-app | jq '.[0].Config.Env' | tr -d '[]' | tr -d '",' | awk '$0 !~ /^[[:space:]]*$/ {print $0}' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//'
# RDS_HOST=database-1.rdsinstanceid.us-east-1.rds.amazonaws.com
# RDS_USERNAME=myrdsusername
# RDS_PASSWORD=mypassowrd
# RDS_DB=mydb
# PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# JAVA_HOME=/opt/java/openjdk
# LANG=en_US.UTF-8
# LANGUAGE=en_US:en
# LC_ALL=en_US.UTF-8
# JAVA_VERSION=jdk-21.0.10+7



# Another solution
# docker inspect spring-boot-app | jq '.[0].Config.Env' | tr -d '[],"' | awk 'NF'


