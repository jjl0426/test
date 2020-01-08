#!bin/bash
#Author:
#Date & Time: 2020-01-07 17:58:21
#Description:提示输入用户名，判断用户是否存在，如果存在，显示一下用户默认的shell

echo "please input the name of user which will be judged."

read -p "the input username is:" USER

if cut -d: -f1 /etc/passwd | grep "^$USER" &> /dev/null
then
	MyBash=`grep "$USER" /etc/passwd | cut -d: -f7`
	echo "$USER 's bash is: $MyBash."
else
	echo "$USER doesn't exist"
	exit 4
fi
