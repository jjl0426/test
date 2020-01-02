#!/bin/bash
echo "please enter three numbers:"
  read -p "the first number is:" n1
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
