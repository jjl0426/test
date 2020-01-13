#!/bin/bash
#Author:
#Date & Time:2020-01-09 19:20:13
#Description:人机猜拳游戏

game=("石头" "剪刀" "布")
echo "请根据下列提示选择您的出拳手势:"
echo -e "1.石头\n2.剪刀\n3.布"

function guess(){
num=$[RANDOM%3]
computer=${game[$num]}

read -p "请选择1-3：" person
case $person in 
	1)
		if [ $num -eq 0 ]
		then
			echo "计算机：${game[0]}"
			echo "平局"
		elif [ $num -eq 1 ]
		then
			echo "计算机：${game[1]}"
			echo "你win"
		else
			echo "计算机：${game[2]}"
			echo "计算机win"
		fi
		;;
	2)
		if [ $num -eq 0 ]
		then
			echo "计算机：${game[0]}"
			echo "计算机win"
		elif [ $num -eq 1 ]
		then
			echo "计算机：${game[1]}"
			echo "平局"
		else
			echo "计算机：${game[2]}"
			echo "你win"
		fi
		;;
	3)
		if [ $num -eq 0 ]
		then
			echo "计算机：${game[0]}"
			echo "你win"
		elif [ $num -eq 1 ]
		then
			echo "计算机：${game[1]}"
			echo "计算机win"
		else
			echo "计算机：${game[2]}"
			echo "平局"
		fi
		;;
	*)
		echo "必须输入1~3的数字"
esac
}
while :
do
	guess
done


