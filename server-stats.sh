#!/bin/bash

# server-stats.sh
# Author: https://www.linkedin.com/in/sumitsharma-ss
# GitHub: https://github.com/sumit0920
# X (Twitter): https://x.com/sumitsharma_95

echo "========================="
echo " Server Performance Stats"
echo "========================="

# OS Information
echo -e "\n📦 OS & Kernel Info:"
uname -a

# Uptime
echo -e "\n⏱️ Uptime:"
uptime -p

# Load average
echo -e "\n📊 Load Average (1m, 5m, 15m):"
uptime | awk -F'load average: ' '{ print $2 }'

# Logged in users
echo -e "\n👥 Logged In Users:"
who

# CPU usage
echo -e "\n💻 Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "User: "$2"%  System: "$4"%  Idle: "$8"%"}'

# Memory usage
echo -e "\n🧠 Memory Usage:"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3, $2, $3*100/$2 }'

# Disk usage
echo -e "\n💽 Disk Usage:"
df -h --total | awk '$NF=="total"{print "Used: "$3" / Total: "$2" ("$5" used)"}'

# Top 5 CPU-consuming processes
echo -e "\n🔥 Top 5 CPU Consuming Processes:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

# Top 5 Memory-consuming processes
echo -e "\n🧵 Top 5 Memory Consuming Processes:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6

# Failed login attempts (last 1 day)
echo -e "\n🚫 Failed Login Attempts (last 24h):"
journalctl _COMM=sshd --since "1 day ago" | grep "Failed password" | wc -l

echo -e "\n✅ Script execution completed!"

