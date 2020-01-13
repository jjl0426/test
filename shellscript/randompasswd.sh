#!/bin/bash
#Author:
#Date & Time:2020-01-12 22:28:59
#Description:生成随机密码[字符串截取]
#设置变量key，存储密码的所有可能性【密码库】
key="0123456789qazwsxedcrfvtgbyhnujmikolpQAZWSXEDCRFVTGBYHNUJMIKOLP"
#使用$#统计密码库的长度
num=${#key}
#设置初始密码为空
pass=''
#循环8次，生成随机密码
for i in {1..8}
do 
	index=$[RANDOM%num]
	pass=$pass${key:$index:1}
done
echo "生成的随机密码为："$pass


