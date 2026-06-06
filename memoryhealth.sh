#!/bin/bash

#############################
#
#
#
###########

set -exo pipefail

memory_usage = free | awk 'NR>1 {print $3}'

if [ "$memory_usage" -gt 100 ];
then
	echo "Warning memory is exhausted"
else
	echo "Everything is good"
fi
