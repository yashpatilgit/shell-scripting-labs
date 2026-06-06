#!/bin/bash

####################
#Author: Yash
#Date: 02/05/2026
#Version: v1
###################

#number can be divisible by 3 or 5 but not by 15


for i in {1..100}; do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ]
then
	echo $i
fi;
done;


