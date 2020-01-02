#!/bin/bash
#Author:
#Date & Time:2020-01-01 19:20:40
#Description:Create a directory and grant permissions
i=1
while [ $i -le 50 ]
do
	if [ -d /userdata ]
	then
		mkdir -p -m 754 /userdata/user$i
		echo "user$i"
		i=$(($i+1))
	else
		mkdir /userdata/
		mkdir -p -m 754 /userdata/user$i
		echi "user$i"
		i=$(($i+1))
	fi
done
