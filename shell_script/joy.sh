#!/bin/bash

target_name=$(grep -w "joy" list.txt)

for i in $target_name
do
    echo "$i is my friend"
done
