#!/bin/bash
echo "please enter a user_name"
read user
echo "please enter a uid_number"
read uid
echo "plese enter the home_dir"
read home
echo "please enter the gid_number"
read gid
echo "please enter a description"
read descp
echo "please enter the shell"
read shell
echo -e "\n\t\tforming a meaning full user creation command\n"
echo "useradd --uid $uid --gid $gid --home $home --shell $shell -c $comment $user"
