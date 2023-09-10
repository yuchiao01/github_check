


#    每五分鐘 輸出一個 test string 並附加到 /tmp/every5min.log
#	輸出範例內容如下 （cat /tmp/every5min.log 範例內容) :
#	2022-12-13 18:30:15 test string
#	2022-12-13 18:35:01 test string


#寫法：
crontab -e
*/5 * * * * echo "test string" >> /tmp/every5min.log

#檢查：
#root@op-joy-testing(04:52:47)[/tmp]$ cat every5min.log
#test string
#test string
#test string
#test string
#test string
#test string
#test string
#test string
#test string
#test string
#test string
#test string
#test string
