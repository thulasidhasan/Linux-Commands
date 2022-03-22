#!/bin/bash
function rhel6_or_rhel7 ()
{
chk=${uname -r|awk -F. '{print $4}')
if [ "$chk" == "el7" ];then
return 0
elif [ "$chk" == "el6" ];then
return 1
fi
}
rhel6_or_rhel7
res=$?

if [ "$res" -eq 0 ]
then
echo RHEL7
elif [ "$res" -eq 1 ]
then
echo RHEL6
else
echo RHEL5
fi
