#!bin/bash
#Author:
#Date & Time: 2020-01-07 19:29:04
#Description:监控系统登录人数，超过4个，显示已经达到4个，5S检查一下，并退出脚本[exit]

echo "please input the name of user:"

read -p "The username is:" USER

cut -d: -f1 /etc/passwd | grep "^$USER" &> /dev/null || exit 6
let COUNT=`who | grep "$USER" | wc -l`
until [ $COUNT -ge 2 ]
do
	sleep 5
	let COUNT=`who | grep "$USER" | wc -l`
done

echo "$USER has more than 2 registered users."
