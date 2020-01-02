#!/bin/bash
#Author:
#Date & Time:2020-01-01 19:07:26
#Description:the shell is to compress the file in the directory of /etc/ in  the specified time

fileDir=`ls /root | grep bak`
if [ -z $fileDir ]
then
	mkdir /root/bak/
	cd /root/bak/
fi

YY=`date +%y`
MM=`date +%m`
DD=`date +%d`

BACKETC=$YY$MM$DD_etc.tar.gz
tar -zcvf $BACKETC /etc

echo "the files in /etc / have been compressed"

