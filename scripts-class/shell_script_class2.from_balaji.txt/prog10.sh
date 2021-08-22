#!/bin/bash
! [ $1 ] && echo "The input filename is missing with the script $0 "&& exit 1
! [ -e $1 ] && echo "$1 is not existing" && exit 2
[ -e $1 ] && stat -c "Name:%n Owner:%U Group_id:%d Group_owner:%G" $1
