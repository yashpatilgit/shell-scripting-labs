#!/bin/bash

showuptime(){
	up=$(uptime -p | cut -c4-)
	since=$(uptime -s)
	cat << EOF
__________________________
This machine has been up for ${up}
It has been running since ${since}
__________________________

EOF

}
showuptime
