#!/bin/bash
egrep '^passwd|^group|^shadow' /tmp/nsswitch.conf|while read line;
do 
if echo $line|grep -q ^passwd;
then sed -i "s/^${line}/passwd files ldap/g" /tmp/nsswitch.conf;
fi;
if echo $line|grep -q ^shadow;
then sed -i "s/^${line}/shadow files ldap/g" /tmp/nsswitch.conf;
fi;
if echo $line|grep -q ^group;
then sed -i "s/^${line}/group files ldap/g" /tmp/nsswitch.conf;
fi;
done
