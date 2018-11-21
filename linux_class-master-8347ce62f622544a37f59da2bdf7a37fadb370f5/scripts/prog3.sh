#!/bin/bash
file='/tmp/passwd'
! [ -e $file ] && cp /etc/passwd /tmp
! [ -e ${file}1 ] && cp /etc/passwd ${file}1
echo "enter to delete yes/no"
read a
[ "$a" == "yes" ] && echo "enter the file name" && read b 
[ "$b" == "$file" ] && rm -f $file
[ "$b" == "${file}1" ] && rm -f ${file}1 &&  
! [ -e ${file}1 ] && echo "${file}1 is removed" 
[ -e ${file}1 ] && echo "${file}1 is not removed"
! [ -e $file ] && echo "$file is removed" 
[ -e $file ] && echo "$file is not removed"

