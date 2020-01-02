#!/bin/bash
#Author:
#Date & Time:2020-01-01 18:30:20
#Description:auto pow-off script
#Every once in a while, if there is no process shut down, if there is sleep

while :
do 
	threadID=`ps -e | grep "$1" | wc -l`
	if [ $threadID -eq 0 ]; then
		date >>shutdownTest.log
		shutdown -h now
		exit
	else
		echo "Sleeping $2 seconds..."

