#!bin/bash
#Author:
#Date & Time: 2020-01-08 00:23:04
#Description:获取IP地址和网关地址

IP=`ifconfig -a | awk 'NR==2{print $2}'`

dafultgateway=`ip route | awk 'NR==1{print $3}'`

echo "IP Addr: $IP     Gateway Addr: $dafultgateway"

