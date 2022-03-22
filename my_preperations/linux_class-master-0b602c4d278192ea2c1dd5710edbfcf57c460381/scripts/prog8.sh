#!/bin/bash 
! [ $1 ] && echo "please enter a string while executing the script $0" && exit 1

if [ "$1" == "userinfo" ];then 
cat /etc/passwd
elif [ "$1" == "groupinfo" ];then 
cat /etc/group
elif [ "$1" == "passwdinfo" ];then 
cat /etc/shadow
else 
echo "entered string is invalid"
fi 
