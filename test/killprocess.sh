#!/bin/bash
#Query the progress number by the progress name,and then kill the progress

echo "please enter the progress name:"
read progressname
processid=`ps -ef | grep $progressname | grep -v "grep" | awk '{print $2}'`
echo "your progressid is : $progressid."
echo "Killing in progress."
for id in $progressid
do
	kill -9 $id
	echo "killed $id."
done
echo "Killed in progress."
