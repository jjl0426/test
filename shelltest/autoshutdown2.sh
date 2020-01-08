#!bin/bash
#Author:
#Date & Time: 2020-01-07 23:41:51
#Description:当输入某个指定参数[jjl]时，系统将在n分钟后自动关机
#Run: ./脚本 参数 分钟

if [ $# -eq 0 ]
then
	echo "You don't input param."
	exit 1
fi
orderParam=$1
echo "The input param is: $orderParam"
shutdowntime=$2
datetime=`date -d '+'$shutdowntime'min' "+%H:%M"`
if [ $orderParam = "jjl" ]
then
	sudo shutdown -r $datetime "The system will restart in $shutdowntime minutes."
else
	"The input character:$orderParam doesn't have any effection on the system."
fi




