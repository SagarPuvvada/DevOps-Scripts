#!/bin/bash
# Server monitoring script

cpu_threshold=80
memory_threshold=90

cpu_usage=$(top -bn1 | awk '/^%Cpu/{print $2}')
memory_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')

if (( $(echo "$cpu_usage > $cpu_threshold" | bc -l) )); then
    echo "High CPU usage: $cpu_usage%"
    # Add alerting or remediation steps here
fi

if (( $(echo "$memory_usage > $memory_threshold" | bc -l) )); then
    echo "High memory usage: $memory_usage%"
    # Add alerting or remediation steps here
Fi
