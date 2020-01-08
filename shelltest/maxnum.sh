#!bin/bash
#Author:
#Date & Time: 2020-01-07 17:27:51
#Description:任意三个整数，判断最大数
echo "please enter three number:"
  read -p "the first number is:" n1
  read -p "the second number is:" n2
  read -p "the third numnber is:" n3
let MAX=$n1
if [ $n2 -ge $n1 ]; then
	MAX=$n2
fi
if [ $n3 -ge $MAX ]; then
	MAX=$n3
fi
echo "the max number is: $MAX."

