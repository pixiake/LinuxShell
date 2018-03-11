#!/bin/bash



#    $$ 当前程序运行pid
tmpfile=$$.txt


ps -e | grep httpd | awk '{print $1}' >> $tmpfile

for pid in `cat $tmpfile`; do
	#statements
	echo "apache ${pid} is killed!!!"
	kill -9 $pid
	sleep 1
done

rm -rf $tmpfile
echo "apache已经被成功关闭！！！"
/bin/systemctl start  httpd.service  #启动apache


