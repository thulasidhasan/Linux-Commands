#!/bin/bash
a=5,b=9
c=`echo "$a+$b"| bc`
d=`echo "$a*$b"| bc`
e=`echo "$a/$b"| bc`
echo $c
echo $d
echo $e
