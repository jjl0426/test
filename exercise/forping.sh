#!/bin/bash
#Author:
#Date & Time:2020-01-01 17:46:34
#Description:Use the for statement to ping a class B network
echo "ping Bnetwork"
read -p "Bnetwork :" Bnet
PingNet=`echo$Bnet | sed 's/\([0-9]\{1,3\}\.[0-9]\{1,3\}\)\..*/\1/g'`
for i in {0..255}
do
	for j in {1..255}
	do
		if ! ping -c1 -W2 $PingNet.$i.$j&>/dev/null
		then
			exit 1
		else
			continue
		fi
	done
	exit 0
done
