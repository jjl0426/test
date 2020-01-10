#!/bin/bash
#Author:
#Date & Time:2020-01-09 19:08:24
#Description:输入三个数，并进行升序排序
read -p "请输入第一个整数：" num1
read -p "请输入第二个整数：" num2
read -p "请输入第三个整数：" num3

tmp=0

if [ $num1 -ge $num2 ]; then
	tmp=$num1
	num1=$num2
	num2=$tmp
fi

if [ $num1 -ge $num3]; then
	tmp=$num1
	num1=$num3
	num3=$tmp
fi

if [ $num2 -ge $num3 ]; then
	tmp=$num2
	num2=$num3
	num3=$tmp
fi

echo "排序后数据[从大到小]为：$num1,$num2,$num3"

