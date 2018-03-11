#!/bin/bash

mysql="mysql -uroot -p"

case $1 in
	select )
		sql="select * from test.countab order by id"
		;;
	delete )
		sql="delete from test.countab where id=$2"
		;;
	insert )
		sql="insert into test.countab(username,password) values('$2','$3')"
		;;
	update )
		sql="update test.countab set username='$3',password='$4' where id=$2"
		;;
	* )
		sql="select * from test.countab order by id"
		;;
esac

$mysql -e "$sql"

