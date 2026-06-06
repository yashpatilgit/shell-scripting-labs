#!/bin/bash
#
#############
#Author: Yash
#Date: 04/05/2026
#Purpose: To get the cpu warning and append to log file
#version: v1
##############

set -eo pipefail

cpu_usage=$(top -bn1 | grep "Cpu(s)" | tail -1 | awk '{print int(100 - $8)}')

echo "CPU - $cpu_usage"

if [ "$cpu_usage" -gt 80 ]; then
	echo "Warning" >> newlog2.txt
else
	echo "Everything is fine"
fi


