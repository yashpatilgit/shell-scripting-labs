#!/bin/bash

if [ ${1,,} = ypasu ]; then
	echo "Oh, you are the boss"
elif [ ${1,,} = help ]; then
	echo "Just enter your username"
else
	echo "I dont know you"
fi
