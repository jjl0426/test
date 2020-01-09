#!bin/bash
#Author:
#Date & Time: 2020-01-08 01:12:32
#Description：在指定目录下建立指定数量的目录，并赋予目录754权限
read -p "please enter your directory:" dir
read -p "please enter the number of directories you want to create:" num
read -p "please enter the name of the subfile:" subfile
i=1
while [ $i -le 10 ]
do
	if [ -d $dir ]
	then
		mkdir -p -m 754 $dir/$subfile$i
		echo "$subfile$i"
		i=$(($i+1))
	else
		mkdir $dir
		mkdir -p -m 754 $dir/$subfile$i
		echo "$subfile$i"
		i=$(($i+1))
	fi
done

