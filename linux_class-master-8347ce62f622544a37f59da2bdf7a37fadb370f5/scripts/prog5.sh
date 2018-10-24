#!/bin/bash
file='/tmp/passwd'
! [ -e $file ] && cp /etc/passwd /tmp
! [ -e ${file}1 ] && cp /etc/passwd ${file}1
! [ "$#" == "2" ] && echo "enter to delete yes/no follwed by the file name" && exit 1
[ "$1" == "yes" ] && echo "$1 to delete the file: $2"
[ "$2" == "$file" ] && rm -f $file
[ "$2" == "${file}1" ] && rm -f ${file}1 &&  
! [ -e ${file}1 ] && echo "${file}1 is removed" 
[ -e ${file}1 ] && echo "${file}1 is not removed"
! [ -e $file ] && echo "$file is removed" 
[ -e $file ] && echo "$file is not removed"

