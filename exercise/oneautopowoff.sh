#!/bin/bash
#Author:
#Date & Time:2020-01-01 18:38:25
#Description:When a specified parameter is entered, the system will automatically shut down after one minute

orderParam=$1
echo "The input param is :" $orderParam
time=`date -d '+1min' "+%H:%M"`
if [ $orderParam ="jjl"]
then 
	echo "I am sorry about that..."
	shutdown -h $time
	echo "Bye Bye..."
else echo "the input character: $orderParam does not have any effection on the system..."
fi
