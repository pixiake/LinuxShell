#!/bin/bash

. menu.sh
clear
menu

while true
do
	#statements
    read -p "please input a option:" option
    echo $option

    case $option in
    	1)
            read -p "add a user:" user
            useradd $user &>/dev/null

            if [[ $? -eq 0 ]]; then
            	#statements
            	str="user ${user} is created successsful!!"
            	echo -e "\033[30;47m$str\033[0m"   #黑红绿棕蓝紫清白30-37
            else
            	str="user ${user} is created fail!!"
            	echo -e "\033[31;47m$str\033[0m"
            fi
    		;;
    	2)
            read -p "input the user:" user
            read -p "set pass for the user:" passwd
            echo $passwd | passwd --stdin $name &>/dev/null
            userdel $user &>/dev/null

            if [[ $? -eq 0 ]]; then
            	#statements
            	str="${user}'s passwd is set successsful!!"
            	echo -e "\033[30;47m$str\033[0m"
            else
            	str="${user}'s' passwd is set fail!!"
            	echo -e "\033[31;47m$str\033[0m"
            fi
    		;;
        3)
            read -p "delete a user:" user
            userdel $user &>/dev/null

            if [[ $? -eq 0 ]]; then
            	#statements
            	str="user ${user} is deleted successsful!!"
            	echo -e "\033[30;47m$str\033[0m"
            else
            	str="user ${user} is deleted fail!!"
            	echo -e "\033[31;47m$str\033[0m"
            fi
    		;;
        4)
    		str=`free -m`
            echo -e "\033[30;47m$str\033[0m"
    		;;
        5)
            str=`df -Th`
            echo -e "\033[30;47m$str\033[0m"
    		;;
    	6)
            echo -e "\033[30;47mquit successsful!!\033[0m"
            break
    		;;	
    	7)
            clear
            menu
    		;;	
    esac
done