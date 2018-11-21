#!/bin/bash
a='1good';
read b;
c=`echo $a|cut -c1,2`;
echo "`expr $c + $b`"
