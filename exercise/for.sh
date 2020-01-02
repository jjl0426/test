#!/bin/bash
#Author:
#Date & Time:2020-01-01 18:50:13
#Description: for circulation
read -p "please input a number :" num
sum=0
for (( i=1; i<=$num; i=i+1))
do
	sum=$(( $sum+ $i))
done
echo "the sum is : $sum"

