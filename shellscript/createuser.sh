#!/bin/bash
#Author:
#Date & Time:2020-01-09 18:50:41
#Description:自动创建相应的用户及密码，用户名为空，直接退出；密码为空则统一使用默认的123456

read -p "请输入用户名：" username

if [ -z $username ]; then
	echo "用户名为空，已退出！"
	exit 2
fi

#使用 stty -echo 关闭shell的回显功能
#使用 stty echo 打开shell的回显功能
stty -echo
read -p "请输入密码：" password
stty echo

password=${password:-123456}
useradd "$username"
echo "$password" | passwd --stdin "$username"


