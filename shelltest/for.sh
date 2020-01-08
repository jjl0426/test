#!bin/bash
#Author:
#Date & Time: 2020-01-08 00:17:29
#Description:for循环，for((初始值;限制值;步长))
read -p "please input a number:" NUM
sum=0
for((i=1;i<=$NUM;i++))
do
	sum=$(($sum+$i))
done
echo "the sum is: $sum."

