#!/bin/bash
#Author:
#Date & Time:2020-01-01 18:25:34
#Description:the program will judge that if file that input a device file or blockfile.

echo "The program will judge that if a file that input is a device file or blockfile."

read -p "Thename of file is :" FileName

if [ -b "$FileName" -o -c "$FileName" ]
        then
                echo "$FileName is a device file" && cp $FileName /dev/&
else
        echo "$FileName is not a devicefile" && exit 1
fi
