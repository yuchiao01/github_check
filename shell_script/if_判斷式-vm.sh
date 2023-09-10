#!/bin/bash



if ping -c 3 34.150.86.166;then
    echo 'great connection'
    ssh 34.150.86.166
else
    echo 'bad'
    ping -c 3 34.150.86.166 2>error.log
fi
