#!/bin/bash
#this is a script to login into the server and get details and exit the server
#we need to install sshpass pkg in server & client machine 
sshpass -p 123 ssh imran@192.168.0.122 "df -h >> file10.txt 
sshpass -p  123 scp file10.txt server@192.168.0.178:~"
