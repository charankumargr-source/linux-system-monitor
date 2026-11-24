#!/bin/bash

LOG_DIR="./logs"

mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/system_health_$(date +%Y%m%d_%H%M%S).log"

{
echo "SYSTEM HEALTH REPORT"

echo ""
echo "System Information"
uname -a

echo ""
echo "Uptime"
uptime

echo ""
echo "CPU Usage"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage"
free -h

echo ""
echo "Disk Usage"
df -h

} > "$LOG_FILE"

echo "Log generated: $LOG_FILE"
