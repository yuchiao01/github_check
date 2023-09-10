#!/bin/bash

read -p "請輸入你的年齡:" age 

if [ $age -le 20 ]; then
    echo "You are teenager."
elif [ $age -le 40 ]; then
    echo "You can be my parents."
else 
    echo "You are already to die."
fi

