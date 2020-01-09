#!bin/bash
#Author:
#Date & Time: 2020-01-08 21:43:41
#Description:worker.sh不断增长内存
if [ -e 123.txt ]
then
	rm -f 123.txt
fi
touch 123.txt
content="abcdefghijklmnopqrstuvwxyz"
i=1
while true
do      
	echo $content >> 123.txt
	echo "写入中...【$i次】" 		        
	cat 123.txt > /dev/null
	((i++))
done


