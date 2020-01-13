#!bin/bash
#Author:
#Date & Time: 2020-01-08 17:37:40
#Description:
rm -f 123.txt
touch 123.txt
#获取系统动态数据信息
date1=`date +%Y%m%d%H%M%S`
date2=`date +%s`
pid=`top -d 1 -n 1 | awk 'NR>7{print $2}' | awk 'NR<=10{print $1}'`
mem=`top -d 1 -n 1 | awk 'NR==4{print $6$8}'`
#把动态信息写入到文件当中
for line in ${date1}${date2}${pid}${mem}
do
		echo $line >> 123.txt
done
content=`fold -w1 123.txt`
echo $content > 123.txt
length=`cat 123.txt`
echo "文件长度为：${#length}"

#将符合条件的动态数据放入myarray数组中
myarray=()
index=0
for((i=1;i<=${#length};i++))
do
	num=`cat 123.txt | cut -d" " -f $i`
	if [ $(($num)) -ge 1 -a $(($num)) -le 6 ]
	then
		myarray[$index]=$(($num))
		let index++
	else
		continue
	fi
done
array_length=${#myarray[*]}
echo "myarray length:"$array_length
#判断数组长度是否为0
if [ $array_length -eq 0 ]
then
	exit
fi

seconds=`date +%S`
dateseconds=$(($seconds))/2
#判断数组下标是否越界
if [ $(array_length-1) -lt $dateseconds ]
then
	exit
fi
#获取随机数并进行比对
yournum=${myarray[$dateseconds]}
echo "您的数字是："$yournum
rm -f 123.txt
touch 123.txt
while :
do
	read -p "please enter your guess:" guessnum
	
	echo $guessnum >> 123.txt
	if [ $guessnum -eq $yournum ]
	then
		echo "OK,you are right." >> 123.txt
		echo "OK,you are right."
		exit 0
	elif [ $guessnum -gt $yournum ]
	then
		echo "Sorry，your number is big,please try again." >> 123.txt
		echo "Sorry,your number is big,please try again."
	else
		echo "Sorry,your number is small,please try again." >> 123.txt
		echo "Sorry,your number is small,please try again."
	fi
done










