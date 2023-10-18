#!/bin/bash
echo  "Hello let me know your age"
read -p "請輸入你的年齡:" age

if [ $age -lt 18 ]; then
    echo "你未成年"
elif [ $age -ge 18 ] && [ $age -le 65 ]; then
    echo "你是成年人"
elif [ $age -gt 65 ]; then
    echo "你是老年人"
else 
    echo "你是什麼"
fi
