#!/bin/bash
read -p "請輸入1~10其中一個數字:"  number

if [ "$number" -ge 1 ] && [ "$number" -le 10 ]; then
    if [ $((number % 2)) -ne 0 ]; then
        echo "你輸入的是 "$number", "$number" 是奇數"
    else
        echo "你輸入的是 "$number", "$number" 是偶數"
    fi     
else
    echo '請重新輸入'
fi
