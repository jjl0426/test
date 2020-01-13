#!/bin/bash
#Author:
#Date & Time:2020-01-09 22:05:22
#Description:统计/var/log有多少个文件，并显示这些文件名

cd /var/log

sum=0
for i in `ls -r *`
do
	if [ -f $i ]; then
		let sum++
		echo "文件名：$i"
	fi
done
echo "总文件数量为：$sum"



