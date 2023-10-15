#!/bin/bash

read -p "請問你要看user還是host:" choice

if [ $choice == user ]; then
    awk -F ':' '{print $1}' passwd
elif [ $choice == host ];then 
    awk -F ' ' '{print $1}' host
else
    echo "你是想看什麼"
fi
