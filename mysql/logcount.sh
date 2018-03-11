#!/bin/bash

yesterday=`date -d yesterday +%Y-%m-%d`

srclog="/etc/httpd/logs/access_log"
dstlog="/etc/httpd/logbak/access_${yesterday}.log"

# mv $srclog $dstlog

pkill -1 httpd 

tmpfile=$$.txt
cat /etc/httpd/logbak/access_2017-06-09.log | awk '{print $1}' | sort | uniq -c | awk '{print $2":"$1}' > $tmpfile

mysql="mysql -uroot -p"

for i in `cat $tmpfile`; do
	#statements
	ip=`echo $i | awk -F: '{print $1}'`
	num=`echo $i | awk -F: '{print $2}'`
	sql="insert into test.countab(date,ip,num) values('$yesterday','$ip','$num')"
    $mysql -e "$sql"
done

rm -rf $tmpfile
sql="select * from test.countab order by id"
$mysql -e "$sql"

