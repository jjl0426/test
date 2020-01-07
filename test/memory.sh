#!/bin/bash
#监控CPU、内存和硬盘利用率

DATE=$(date +%F" "%H:%M)
IP=$(ifconfig -a | awk 'NR==2 {print $2}')

##CPU
echo "CPU--------------------"
US=$(vmstat | awk 'NR==3 {print $13}')
SY=$(vmstat | awk 'NR==3 {print $14}')
IDLE=$(vmstat | awk 'NR==3 {print $15}')
WAIT=$(vmstat | awk 'NR==3 {print $16}')
USE=$(($US+$SY))
if [ $USE -ge 50 ]; then
	echo "
	Date: $DATE
	Host: $IP
	Problem: CPU utilization $USE"
else 
	echo "
	Date: $DATE
	Host: $IP
	State: normal"
fi

##Mem
echo "Mem--------------------"
TOTAL=$(free -m | awk '/Mem/ {print $2}')
USE=$(free -m | awk '/Mem/ {print $3}')
FREE=$(free -m | awk '/Mem/ {print $4+$6}')

if [ $FREE -lt 1024 ]; then
	echo "
	Date: $Date
	Host: $IP
	Problem: Total=$TOTAL,Use=$USE,Free=$FREE"
fi

##Disk
echo "Disk--------------------"
PART_USE=$(df -h | awk -F'[% ]+' 'BEGIN{OFS="="} /^\/dev/ {print $1,$2,$5,$6}')
for i in $PART_USE; do
	PART=$(echo $i | cut -d"=" -f1)
	TOTAL=$(echo $i | cut -d"=" -f2)
	USE=$(echo $i | cut -d"=" -f3)
	MOUNT=$(echo $i | cut -d"=" -f4)
	if [ $USE -gt 80 ]; then
		echo "
		Date: $DATE
		Host: $IP
		Total: $TOTAL
		Problem: $PART=$USE($MOUNT)"
	fi
done
