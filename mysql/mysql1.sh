#!/bin/bash
mysql="mysql -u root -p"

sql="show tables from test"
# sql="create database test"
# sql="create table test.countab(
#       id int unsigned auto_increment primary key,
#       date varchar(100),
#       ip varchar(100),
#       num int
# )"

# sql="desc test.user"
# sql="select * from test.user"
# sql="insert into test.user(username,password) value('user2','123')"
# sql="update test.user set password='321' where id=1"
# sql="delete from test.user where id=1"
# sql="drop table test.user"
# sql="drop database test"
# sql="show databases"
# sql="select password from test.user where id=1"
$mysql -e "$sql"