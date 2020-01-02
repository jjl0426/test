#!/bin/bash
#Author:
#Date & Time:2020-01-01 19:00:01
#Description:Gets the IP address and gateway address of the native

file="/etc/sysconfig/network-scripts/ifcfg-Auto_eth3"
if [ -f $file ]
then
	IP=`grep "IPADDR" $file | awk -F "=" '{print $2}'`
	gateway=`grep "GATEWAY" $file | awk -F "=" '{print $2}'`
	echo "IPAddr: $IP "
	echo "GateWay: $gateway"
	exit 1
else
	echo "Not Found"
fi

