#!/bin/bash
! [ $1 ] && echo "The input filename is missing with the script $0 "&& exit 1
! [ -e $1 ] && echo "$1 is not existing" && exit 2
[ -e $1 ] && stat -c "Name:%n Owner:%U Group_owner:%G" $1

! [ -r $1 ] && echo "sorry!, read permission is not there"
[ -r $1 ] && echo "Read permission is there"

! [ -w $1 ] && echo "sorry!, write permission is not there"
[ -w $1 ] && echo "Write permission is there"

! [ -x $1 ] && echo "sorry!, execute permission is not there"
[ -x $1 ] && echo "execute permission is there"
