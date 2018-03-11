#!/bin/bash


function menu(){

title="My Menu"
url="www.baidu.com"
time=`date +%Y-%m-%d`

cat << eof


##################################
              `echo -e "\033[35;40m$title\033[0m"`
##################################
*   1)add a user
*   2)set password for user
*   3)delete a user
*   4)print disk space
*   5)print mem space 
*   6)quit
*   7)return main menu
##################################
$url          $time
##################################
eof

}
