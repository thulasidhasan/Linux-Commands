#!/bin/bash
echo "The name of the script is $0"
echo "The number of arguments given in the command line are : $#"
echo "The \$1 is $1 and \$2 is $2"
echo "The name is $1 and age is $2"
echo "The arguments given in the command line are: $*"
echo "The arguments given in the command line are: $@"
echo "The Whole command line is : sh $0 $*"
echo "The Whole command line is : sh $0 $@"
