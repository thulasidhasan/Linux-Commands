#!/bin/bash
echo "the name is $1 "
! [ $1 ] || echo "CLIARG \$1 is present"
[ $1 ] || echo "CLIARG \$1 is not present"


