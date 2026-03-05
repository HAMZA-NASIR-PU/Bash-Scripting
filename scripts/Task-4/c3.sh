#!/bin/bash

services="nginx mysql redis docker"
count=1

# If use double quotes around $services in the follwing for loop
# condition, then loop will run only once.
for service in $services; do
    echo "[$count] Checking $service..."
    sleep 1
    ((count++))
done

echo -e "\n\n"

# Convert string to an Array

services=(nginx mysql docker redis)
count=1
for service in "${services[@]}"; do
    echo "[$count] Checking $service..."
    sleep 1
    ((count++))
done

echo -e "\n\n"

# Another variant

# ${#services[@]} -> Array length
# ${services[i]} -> indexed access

for (( i=0; i<${#services[@]}; i++ )); do
    echo "[$((i+1))] Checking ${services[i]}..."
    sleep 1
done


