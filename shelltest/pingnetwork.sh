#!bin/bash
#Author:
#Date & Time: 2020-01-07 17:50:35
#Description:利用for语句ping B类网

echo "ping Bnetwork"

read -p "Bnetwork:" Bnet

PingNet=`echo $Bnet | sed 's/\([0-9]\{1,3\}\.[0-9]\{1,3\}\)\..*/\1/g'`

for i in {0,255}
do
	for j in {1..255}
	do
		if ping -c1 -W2 $PingNet.$i.$j &>/dev/null
		then
			echo "$PintNet.$i.$j is online."
		else
			echo "$PingNet.$i.$j is offline."
		fi
	done
done

