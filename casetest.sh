#!/bin/bash

case ${1,,} in
	ypasu | administrator)
		echo "Hello, you are the boss"
		;;
	help)
		echo "Please enter your username"
		;;
	*)
		echo "Hello There, you are not the boss"
esac
