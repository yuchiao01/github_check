#!/bin/bash

name=$(find ./shell_script/ -name "*.sh")

for i in $name
do
    mv $i ~/github
done
