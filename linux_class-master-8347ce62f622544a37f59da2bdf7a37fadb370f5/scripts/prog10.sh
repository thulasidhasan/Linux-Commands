#!/bin/bash
if [ $1 ];then
echo "CLI ARG1 is present"
###nested if starts
if [ -e $1 ];then 
echo "$1 file is present"
else
echo "$1 file is not present"
fi
###nested if ends
else
echo "No CLI ARG1 is present"
fi
