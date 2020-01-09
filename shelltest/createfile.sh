#!bin/bash
#Author:
#Date & Time: 2020-01-08 01:50:01
#Description:创建一个目录，可以指定其所属文件夹，其所拥有的权限及名称

read -p "please enter your subfile's parent filename:" parentname
read -p "please enter the name of your file:" subfile
read -p "please enter your subfile's value of authority:" av
if [ -e $parentname ]
then
	cd $parentname
	mkdir -m $av $subfile
else
	if [ `cd .. | ls | grep "$subfile" | wc -l` -ne 0 ]
	then
		mkdir -m $av $subfile
	else
		mkdir -p -m $av $parentname/$subfile
	fi
	cd $parentname
fi

if [ -e $subfile ]
then
	echo "$parentname/$subfile creates successfully." && cd $subfile
else
	echo "$parentname/$subfile creates failed."
	exit 1
fi
