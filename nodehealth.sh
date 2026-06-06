#!/bin/bash

##########################
# script to know the node health disk and memory
#
# Author: Yash
# Date: 1/05/2026
# Version: v1
#
###########################

set -exo pipefail

df -h

free -g

nproc

ps -ef | grep "systemd" | awk -F " " '{print $2}'
