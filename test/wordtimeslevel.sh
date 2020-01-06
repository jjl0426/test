#!/bin/bash

function countOfWords(){
 echo "please enter the file path:"
 read filepath
 f_path="./temp.txt"
 while read lines
 do
	line_count=`echo $lines | wc -m`
	flag=1
	while [ $flag -lt $line_count ]
	do
		word_count=`echo $lines | cut -c $flag`
		echo "$word_count" >> $f_path
		let flag++
	done
 done < $filepath
 
 sort $f_path | uniq -c | sort -k1nr
 rm -f $f_path
}

countOfWords
echo "end of program----------------------"
