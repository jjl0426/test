#!bin/bash
#Author:
#Date & Time: 2020-01-08 21:44:02
#Description:监控worker内存增长情况，每5s监测一次，当内存超过20M之后，关掉worker.sh并重启它

read -p "please enter the name of process:" processname
echo "ProcessName: "$processname
PID=`ps -ef | grep $processname | grep -v "grep" | awk 'NR==1{print $2}'`
echo "the PID of the process: "$PID
if [ -z $PID ]
then
	echo "your processname is not exists."
	exit 1
fi
while true
do
	VIRT=`top -d 1 -n 1 -p $PID | awk 'NR==8{print $5}'`
	RES=`top -d 1 -n 1 -p $PID | awk 'NR==8{print $6}'`
	echo virt: $VIRT
	echo res: $RES
	if [ $(($((VIRT+RES))/1024)) -ge 20 ]
	then
		echo "the memory is out of 20M."
		pgrep $processname | xargs kill -9
		chmod +x $processname 
		nohup ./$processname >456.txt 2>&1 &
		exit 0
	fi
	sleep 5

done
