#!/bin/bash




#在~/Downloads/international_trade_answer/底下找pdf檔案
find_pdf=$( find ~/Downloads/international_trade_answer/ -type f -iname '*.pdf')


#複製以上找到的pdf檔案，到~/Documents，成功的話印出good job
for i in $find_pdf
    do 
        cp $i ~/Documents/ && echo 'good job!'
    done
