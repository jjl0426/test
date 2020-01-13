#!/bin/bash
#Author:
#Date & Time:2020-01-12 22:16:35
#Description:提示用户输入年份后判断该年是否为闰年

:<<EOF
能被4整除并且不能被100整除的年份是闰年
能被400整除的年份也是闰年
EOF
read -p "请输入一个年份：" year

if [ "$year" = "" ]; then
	echo "没有输入年份"
	exit
fi
#使用正则测试变量year中是否包含大小写字母
if [[ "$year" =~ [a-Z] ]]; then
	echo "输入的不是数字"
	exit
fi
#判断是否是闰年
if [ $[year % 4] -eq 0 ] && [ $[year %100 ] -ne 0 ]; then
	echo "$year年是闰年"
else
	echo "$year年不是闰年"
fi


