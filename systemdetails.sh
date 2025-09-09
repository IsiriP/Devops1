#!/bin/bash

LOG_FILE="/var/log/system_details.log"

{
echo "System Report at $(date)"
echo "CPU Info:"
lscpu | grep "Model name"

echo -e "\nMemory Usage:"
free -h

echo -e "\nDisk Usage:"
df -h

echo -e "\nUptime:"
uptime

echo
} >> "$LOG_FILE"
