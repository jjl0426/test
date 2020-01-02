#!/bin/bash
#Author:
#Date & Time:2019-12-31 02:29:21
#Description:The sum of even Numbers within 100

echo "the sum of even numbers within 100"

let sum=0

for i in $(seq 1 100)
do
	if [ $[$i%2] == 0 ]
	then
		let sum+=$i
	fi
done

echo "the sum of the even number is $sum"
