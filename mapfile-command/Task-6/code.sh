
# Linux Host Fleet Health Auditor (RHEL / SRE Style)


mapfile -t hosts < <(
cat <<EOF
web01|OK|78|65|12|running
web02|WARN|92|85|15|running
db01|CRIT|96|90|25|stopped
cache01|OK|40|30|5|running
cache03|WARN|88|91|92|running
api01|WARN|88|91|20|running
EOF
)

echo "Total Servers: ${#hosts[@]}";

ok_count=0
warn_count=0
crit_count=0
down_services=0
high_load=0

for h in "${hosts[@]}"; do

    # <<< is a here-string operator.
    IFS='|' read -r host status cpu mem disk svc <<< "$h";
    echo "Processing host: $host";

    if [ "$status" = "CRIT" ] && [ "$svc" != "running" ]; then
        crit_count=`expr $crit_count + 1`;
        down_services=`expr $down_services + 1`
        echo "Critical: Host down or service failure."

    elif [ "$cpu" -gt 90 ] || [ "$mem" -gt 90 ]; then
        warn_count=`expr $warn_count + 1`;
        high_load=`expr $high_load + 1`;
        echo "HIGH LOAD DETECTED";

        if [ "$disk" -gt 90 ] && [ "$svc" = "running" ]; then
            echo "Disk Pressure + service running - investigate I/O";
        fi
    
    elif [ "$status" = "WARN" ] && [ "$svc" != "running" ]; then
        warn_count=`expr $warn_count + 1`;
        down_services=`expr $down_services + 1`;
        echo "WARN + service issue";
    
    elif [ "$status" = "OK" ] && [ "$cpu" -lt 80 ] && [ "$mem" -lt 80 ]; then
        ok_count=`expr $ok_count + 1`;
        echo "Healthy Host";

    else
        warn_count=`expr $warn_count + 1`;
        echo "Mixed/Unknown Condition";
    fi
    printf '\n-------------------------------------------\n';
done

printf '\n\n===================== SYSTEM AUDIT REPORT =====================\n';

echo "OK HOSTS: $ok_count";
echo "CRITICAL COUNT: $crit_count";
echo "DOWN SERVICES: $down_services";
echo "WARNING HOSTS: $warn_count";
echo "HIGH LOAD HOSTS: $high_load"

