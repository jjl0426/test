#!/bin/bash
#Author:
#Date & Time:2020-01-09 18:30:07
#Description:实时监控本机内存和磁盘剩余空间，剩余内存小于500M，根分区剩余空间小于1000M时，发送邮件给root

#提取根分区剩余空间
disk_size=$(df / | awk '/\//{print $4}')
#提取内存剩余空间
mem_size=$(free | awk '/Mem/{print $4}')

while :
do

#注意内存和磁盘提取的空间大小都是以KB为单位
if [ $disk_size -le 512000 -a $mem_size -le 1024000 ]
then
	mail -s "Warning" root <<EOF
	Insufficient resources,资源不足
EOF
fi
done

