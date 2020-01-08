#!bin/bash
#Author:
#Date & Time: 2020-01-07 17:43:05
#Description:求100以内偶数的和

echo "Computethe sum of the even number which between 1 and 100."

let sum=0

for i in $(seq 1 100)
do
	if [ $[$i%2] == 0 ]
	then
		let sum+=$i
	fi
done

echo "The sum of the even number is $sum."


