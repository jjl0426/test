#!/bin/bash
#Author:
#Date & Time:2020-01-09 21:52:58
#Description:打印国际象棋棋盘
:<<EOF
设置两个变量i和j，一个代表行，一个代表列，国际象棋为8*8棋盘
i=1是代表准备打印第1行棋盘，第1行棋盘有灰色和蓝色间隔输出，总共8列
i=1，j=1代表第1行的第1列；i等于2，j=3代表第2行的第3列
棋盘的规律是i+j，如果是偶数就打印蓝色色块，如果是奇数就打印灰色色块
使用echo -ne打印色块，并且打印完成色块后不自动换行，在同一行继续输出其他色块
EOF
for i in {1..8}
do 
	for j in {1..8}
	do
		sum=$[i+j]
		if [ $[sum%2] -eq 0 ]; then
			echo -ne "\033[46m \033[0m"
		else
			echo -ne "\033[47m \033[0m"
		fi
	done
	echo
done
