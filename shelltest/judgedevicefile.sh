#!bin/bash
#Author:
#Date & Time: 2020-01-07 21:39:17
#Description:判断一文件是不是块或字符设备文件，如果是将其拷贝到/dev目录下
:<<!
-b：检测文件是否是块设备文件
-c：检测文件是否是字符设备文件
mknod：创建设备文件
	mknod DENAME {b | c} MAJOR MINOR
!

echo "The program will judge that if a file the input is a device file or blockfile."
read -p "The name of file is:" FileName

if [ -b "$FileName" -o -c "$FileName" ]
then
	echo "$FileName is a device file." && cp $FileName /dev/ &
else
	echo "$FileName is not a device file." && exit 1
fi
