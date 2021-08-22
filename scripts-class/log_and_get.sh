#!/bin/bash
#this is a script to login into the server and get details and exit the server
#we need to install sshpass pkg in server & client machine 
sshpass -p password ssh user-name@ip "touch test.txt"
