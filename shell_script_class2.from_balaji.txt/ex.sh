#!/bin/bash
a=5
b=6
c=`expr $a + $b`
c=$(expr $a + $b)
echo "the added value of $a and $b is $c"
