#!bin/bash
#Author:
#Date & Time: 2020-01-08 21:43:41
#Description:worker.sh不断增长内存


content="abcdefghijklmnopqrstuvwxyz"
i=1

while true
do      
	content=$content$content
	echo "内存增长中...【$i次】" 		       
	((i++))
	sleep 5
done

