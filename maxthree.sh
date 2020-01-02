#!bin/bash
#Author:
#Date & Time:2020-01-01 17:17:19
#Description: Any three integers determine the maximum number

echo  "please enter three number:"
  read -p "the first number is :" n1
  read -p "the second number is:" n2
  read -p "the third number is:" n3
let MAX=$n1
if [ $n2 -ge $n1 ]; then
    MAX=$n2
fi
if [ $n3 -ge $MAX ]; then
    MAX=$n3
fi
echo "the maxnumber is $MAX."
