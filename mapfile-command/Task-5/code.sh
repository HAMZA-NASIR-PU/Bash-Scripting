
# Load all running containers IDs

mapfile -t containers < <(docker ps -q)

echo "Total running containers: ${#containers[@]}";

for id in "${containers[@]}"; do
    docker inspect "$id" --format '{{.Name}}'
done

