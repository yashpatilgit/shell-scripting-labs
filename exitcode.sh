#!/bin/bash
showname(){
	echo hello $1
	if [ ${1,,} = yash ]; then
		return 0
	else
		return 1
	fi
}
showname $1
if [ $? = 1 ]; then
	echo "Someone else called the function"
fi
