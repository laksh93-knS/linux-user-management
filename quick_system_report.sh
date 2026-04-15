#!/bin/bash

echo "========== Quick System Report =========="

echo ""
echo "Date and Time:"
date

echo ""
echo "Current User:"
whoami

echo ""
echo "Disk Usage:"
df -h / | tail -1

echo ""
echo "Memory Usage:"
free -h | grep Mem

echo ""
echo "Running Processes:"
ps -e | wc -l

echo ""
echo "IP Address:"
hostname -I

echo ""
echo "Active Users:"
who | wc -l

echo ""
echo "Last Login:"
last -n 1

echo ""
echo "SSH Sessions:"
who | grep pts

echo ""
echo "NFS Mounts:"
mount | grep nfs

echo ""
echo "========================================="
