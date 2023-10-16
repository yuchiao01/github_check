#!/bin/bash

read -p '請隨機輸入一個數字:' number

if [ $number -gt 0 ]; then
    echo '這是一個正數'
elif [ $number -lt 0 ]; then
    echo '這是一個負數'
#elif [ $number -eq 0]; then
else
    echo '這是零'
fi
