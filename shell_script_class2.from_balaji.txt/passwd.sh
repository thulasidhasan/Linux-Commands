#!/bin/bash
cat /etc/passwd |awk -F: '{ print $1 }' > file1
ssh root@192.168.199.167 cat /etc/passwd |awk -F: '{ print $1 }' > file2

for name in `cat file2`
do
if ! grep -q $name file1 
then 
	echo $name
fi
done

#echo "The total number of user in machine1 is: $machine1"
#echo "The total number of user in machine2 is: $machine2"


