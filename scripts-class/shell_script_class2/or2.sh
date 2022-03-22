#!/bin/bash

[ $1 ] || echo "the both value is missing" 

[ $2 ] || echo "the second value is missing" 

! [ $2 ] || echo  "the $1 and $2 is there"




