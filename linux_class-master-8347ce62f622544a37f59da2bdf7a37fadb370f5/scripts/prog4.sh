#!/bin/bsh
echo "totally $# CLI ARG are there"
echo "$*"
echo "the first ARG: is $1"
echo "the second ARG: is $2"
echo "the third ARG: is $3"
echo "Another method of counting:"
echo "totally `echo $*|wc -w` CLI ARG are there"
