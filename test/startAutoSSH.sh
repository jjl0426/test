#!/bin/bash

## 配置 SSH 免密登录的服务器列表，可写死，也可通过传参或者读配置文件的方式读取
#BASE_HOST_LIST="node001 node002 node003"
BASE_HOST_LIST=$*

## 脚本的放置目录（传送之前，和传送之后都是这个目录）
SCRIPT_PATH="/root/autoSSH.sh"

## 第一步：先让自己先跑 autoSSH.sh 脚本，为了能顺利发送脚本到集群各节点
sh ${SCRIPT_PATH} ${BASE_HOST_LIST}

## 第二步：把脚本发送给其他服务器，让其他服务器也执行该脚本
for SSH_HOST in $BASE_HOST_LIST
do
    ## first : send install script
    ## 注意这行，用户名写死为root，如果是其他用户，记得在这里修改
    scp -r $SCRIPT_PATH root@${SSH_HOST}:$SCRIPT_PATH
    ## send command and generate ssh and auto ssh
    ssh ${SSH_HOST} sh ${SCRIPT_PATH} ${BASE_HOST_LIST}
done
