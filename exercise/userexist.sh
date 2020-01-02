#!/bin/bash
#Author:
#Date & Time:2020-01-01 17:55:07
#Description: Determine if the user exists

echo "pleaseinput the name of user which whill be judged..."

read -p "the input username is :" USER

if cut -d: -f1 /etc/passwd | grep "^$USER" &> /dev/null
        then
                MyBash=`grep "$USER" /etc/passwd | cut -d: -f7`
                echo "$USER's bash is :$MyBash"
        else
                echo "$USER does not exist"
                exit 4
fi
