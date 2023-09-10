#!/bin/bash
#這是mac air要連到我這台pro，練習寫的腳本

if [ $? -eq 0 ]; then
	ssh -p 22 yuchiao@172.20.10.2
else
	ssh -p 22 yuchiao@172.20.10.2 >>error.log
fi
