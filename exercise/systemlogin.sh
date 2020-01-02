#!/bin/bash
#Author:
#Date & Time:2020-01-01 18:13:34
#Description:Monitoring system login number, 5S check

echo "please input the name of user..."
read -p "The username is :" USER
cut -d: -f1 /etc/passwd | grep "^$User" &> /dev/null || exit 6
let COUNT=`who | grep "$USER" | wc -l`
until [ $COUNT -ge4 ]
	do
		sleep 5
		let COUNT=`who | grep "$USER" | wc -l`
	done
echo "$USER loged 4 times."
