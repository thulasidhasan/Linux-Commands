#!/bin/bash
egrep '^passwd|^group|^shadow|^netgroup' /tmp/nsswitch.conf|while read line;
do 
new=$(echo $line|awk '{print $1" "$2" ldap"}');
sed -i "s/^${line}/$new/g" /tmp/nsswitch.conf;
done
