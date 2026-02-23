#!/bin/bash

usage=$(df -h / | awk 'NR==2 {print $5}'| tr -d '%')
if [ $usage -gt 80 ]; then
    echo "Warning: ${usage}%"
else 
    echo "OK: ${usage}%"
fi

totalSize=$(df -h / | awk 'NR==2 {print $2}' | tr -d 'G')
echo "Total Size: ${totalSize}GB"

used=$(df -h / | awk 'NR==2 {print $3}' | tr -d 'G')
echo "Used size: ${used}GB"
