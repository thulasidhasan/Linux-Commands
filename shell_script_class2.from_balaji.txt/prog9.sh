#!/bin/bash
! [ $1 ] && echo "The input filename is missing " && exit 1
[ -e $1 ] && stat -c "Name:%n Owner:%U Group:%G" $1
