#!/bin/bash

echo " --- System Health Checker ---"
echo ""

echo  "Uptime"
uptime
echo ""

echo "Memory Usage"
free -h
echo ""

Echo "Disk Usage"
df -h
echo ""

echo "NGINX Status"
systemctl -isactive nginx

