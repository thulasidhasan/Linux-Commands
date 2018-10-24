#!/bin/bash
! [ $1 ] && echo "please enter a file name while executing the script $0" && exit
[ -e $1 ] && echo "file present" && exit 
echo "$1 is not present"

