#!/bin/bash
LOG_FILE="/var/log/system_stats.log"
echo "----- $(date) -----" >> $LOG_FILE
echo "CPU Usage:" >> $LOG_FILE
top -bn1 | grep "Cpu(s)" >> $LOG_FILE
echo "Memory Usage:" >> $LOG_FILE
free -h >> $LOG_FILE
echo "Disk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE
echo "Network Usage:" >> $LOG_FILE
ifstat -t -i eth0 1 1 >> $LOG_FILE
