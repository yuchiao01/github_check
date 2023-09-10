1. 請撰寫一隻shell script，並完成以下動作

	1. 當執行腳本時，自動將 /var/log 目錄下所有 .log 的檔案備份到 /backup目錄中，並以前一天的日期來做存放，例如今天是 2022-12-14 當執行程式時，會將 /var/log 底下的所有.log 檔案 備份到 /backup/20221213 目錄下
	2. 將 /backup 目錄下 日期目錄以 gzip 進行打包壓縮，以上面範例來講，需要將 20221213 目錄壓縮成以下檔名 20221213.tar.gz

	以上兩個動作必須在同一隻 script 完成



#!/bin/bash

#宣告file_list這個變數，要找出在/var/log底下的.log檔案
file_list=$(find /var/log -name "*.log")

#宣告yesterday這個變數，要從昨天抓日期（google date的表示法)
yesterday=$(date -d '1 days ago' +%Y%m%d)

#告訴他path路徑是在/backup/$yesterday底下
path="/backup/$yesterday/"

#為了不要讓他因為檔案裡面有東西，就不能自動化，所以我先把檔案刪除
rm -rf $path

#然後在創建檔案
mkdir -p "/backup/$yesterday/"

#開始用for loop寫程式，i是從file_list裡面一條一條抓出來的檔案
for i in $file_list
do
        #把i讀取出來，並且複製到/backup/$yesterday/下面
        cp $i $path
done

#把路徑ls出來
ls $path

#再進行壓縮到/backup/$yesterday/
tar -zcvf /backup/${yesterday}.tar.gz $path


解壓縮後的成果：
root@op-joy-testing(03:09:39)[/backup]$ tar -zxvf 20221217.tar.gz
backup/20221217/
backup/20221217/rhsmcertd.log
backup/20221217/yum.log
backup/20221217/vmware-network.4.log
backup/20221217/vmware-network.log
backup/20221217/wpa_supplicant.log
backup/20221217/anaconda.log
backup/20221217/audit.log
backup/20221217/boot.log
backup/20221217/ifcfg.log
backup/20221217/journal.log
backup/20221217/ks-script-Ac1AUm.log
backup/20221217/packaging.log
backup/20221217/program.log
backup/20221217/rhsm.log
backup/20221217/storage.log
backup/20221217/tuned.log
backup/20221217/vmware-network.2.log
backup/20221217/vmware-network.6.log
backup/20221217/vmware-vmsvc-root.log
backup/20221217/vmware-network.3.log
backup/20221217/vmware-network.7.log
backup/20221217/vmware-vmtoolsd-root.log
backup/20221217/vmware-network.5.log
backup/20221217/vmware-vmsvc.log
backup/20221217/X.log
backup/20221217/vmware-network.1.log