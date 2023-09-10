本週作業1


請撰寫一隻 shell script，並完成以下要求
1. 在 /root/scripts 目錄下，建立一個 userParse.sh 的 script 檔案
2. 由於 userParse.sh 無執行權限，請給予該檔 執行權限
3. 當執行該程式時，可以將 /etc/passwd 檔案中第 1、3、4、6、7欄顯示出來，並做適當的格式化輸出
範例如下:



#!/bin/bash
chmod 755 userParse.sh

awk -F ':' '{print "user="$1",uid="$3",gid="$4",home_dir="$6",default_shell="$7}' /etc/passwd