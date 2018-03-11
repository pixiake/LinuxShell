#!/bin/bash

nc -w 3 localhost 3306  &>/dev/null

if [ $? -eq 0 ];then
    str="mysql 服务器目前处于正常状态！！"
else
    str="mysql 服务器目前处于关闭或无响应状态！！"
fi

echo $str | mail -s 'apache web server' admin@GF.com