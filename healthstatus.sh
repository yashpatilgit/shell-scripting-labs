#!/bin/bash


####################
#Script to know the health status with alert at >80% usage of disk appending into the newlogfile.txt

#Author: Yash
#Date: 02/05/2026
#Version: v1
####################


#set -x
set -e
set -o pipefail

date

uptime

free -m #free memory

df -h #disk

disk_usage=$(df / |awk 'NR>1 {print $5}' | sed 's/%//')

if [ "$disk_usage" -gt 80 ];
then 
	echo "Warning disk usage : $disk_usage" >> newlogfile.txt
else
	echo "everything is good"
fi


