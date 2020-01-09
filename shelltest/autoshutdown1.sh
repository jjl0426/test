#!bin/bash
#Author:
#Date & Time: 2020-01-07 22:50:20
#Description:自动关机脚本，10seconds检查一次是否存在该进程，存在继续检查，计时；否则提示并且计时60秒关机

echo "please input the threadID of the process:"
read -p "The threadID is:" threadID

while [ `ps -e | grep "$threadID" | grep -v "grep" | wc -l` -eq 0 ]
do
	echo "The process is running..." &&  sleep 10
done


sudo shutdown +1 "This system will be shutdown in 1 minute."
