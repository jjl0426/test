#!/bin/bash
#写一个shell脚本时，自动生成“#!/bin/bash”这一行和注释信息
if ! grep "^#!" $1&>/dev/null ; 
then
cat >> $1<< EOF
#!bin/bash
#Author:
#Date & Time: `date +%F" "%T`
#Description:
EOF
fi
vim +5 $1
