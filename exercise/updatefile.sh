#!/bin/bash
#Author:
#Date & Time:2020-01-01 18:45:37
#Description: oldfilename,newfilename,filedictionary
while true
do
	read -p "the old file is :" oldfile
	if [ $oldfile = "quit"]
	then
		exit 0
	else
		read -p "the new name of the file is :" newfile
		read -p "the Directtory is :" dir
		echo "the dirctory is:" $dir
		cd $dir
		mv "$oldfile" "$newfile"
		echo "the $oldfile has been renamed to $newfile..."
	fi
done
