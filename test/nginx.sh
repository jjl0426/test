#!/bin/bash
#Execute the script alternately every 30 minutes

#aa=`ps -C nginx -n | wc -l`

aa=`sudo systemctl status nginx | grep 'running'`

if [ "$aa" == "" ]
then
        sudo systemctl start nginx
        echo "nginx is started."
else
        sudo systemctl stop nginx
        echo "nginx is stopped."
fi

