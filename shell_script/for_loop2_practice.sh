
將 /var/log 目錄下所有 .log 的檔案備份到 /backup目錄中，並以前一天的日期來做存放，例如今天是 2022-12-14 當執行程式時，會將 /var/log 底下的所有.log 檔案 備份到 /backup/20221213 目錄下將 /backup 目錄下 日期目錄以 gzip 進行打包壓縮，並將每一個log 檔名 重新命名

例如原本檔名是 boot.log 備份過去後變成 20221216-boot.log

注意，不要改到 var log 檔名


#!/bin/bash
file_list=$(find /var/log -name *.log )
yesterday=$(date -d 'yesterday'  +'%Y%m%d')
backup_dir_prefix="/backup"

for i in  $file_list
do
        filename=$(echo $i | awk -F '/' '{print $4}' )
        echo "cp $i ${backup_dir_prefix}/${yesterday}/${yesterday}-${filename}"

done