#!/bin/bash
function rhel6_or_rhel7 ()
{
chk=${cat /etc/redhat-release |awk '{print $4}'|cut -c1)
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
