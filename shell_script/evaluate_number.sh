#!/bin/bash



read -p "請輸入一個整數": number

if [ $number -eq 0 ]; then
    echo "你輸入的是0"
elif [ $number -ge 1 ] && [ $number -le 10 ]; then
    echo "你輸入的是1~10"
else 
    echo "你輸入的是什麼"
fi
