#!/bin/bash
! [ $1 ] && echo "no input user" && exit 1
x=1;
file='/tmp/sudoers';
analog='wheel';
line_no=`cat $file|while read line;do if echo $line|grep -q "^%${analog}"; then echo $x; fi; (( x ++ ));done`
insert=`sed -n "${line_no}p" $file|sed "s/$analog/$1/g"`;
new_line=`expr $line_no + 1`;
sed -i "${new_line}i ${insert}" $file
