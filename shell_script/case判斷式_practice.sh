
題目：
用　case判斷式：
執行時 輸入user 會列出 /etc/passwd 的第一欄
如果代入 host 會列出 /etc/hosts 內容


 #當$1
case $1 in
        #等於user的時候
        "user")
                #宣告userlist這個變數，要去/etc/passwd裡面用：分隔找出第一欄
                userlist=$(awk -F ':' '{print$1}' /etc/passwd)

                #當$1等於user的時候，就執行userlist這個變數
                echo "$userlist"
                ;;

        #當$1等於hosts的時候
        "hosts")

                #宣告hosts這個變數，要去看/etc/hosts
                print_hosts=$(cat /etc/hosts)

                #當$1等於hosts的時候，就執行 print_hosts這個變數
                echo "$print_hosts"
                ;;


        #當上面沒有一個條件成立的時候
        *)

                #當上面沒有一個條件成立的時候，就執行這行
                echo "no"
                ;;
#結束這個腳本
esac

執行結果：
root@op-joy-testing(05:53:48)[~/scripts]$ ./userlist2.sh
no

root@op-joy-testing(05:53:57)[~/scripts]$ ./userlist2.sh  user
root
bin
daemon
adm
lp
sync
shutdown
halt
mail
operator
games
ftp
nobody
avahi-autoipd
systemd-bus-proxy
systemd-network
dbus
polkitd
tss
postfix
sshd
ntp
dockerroot
joy
joy01

root@op-joy-testing(05:54:01)[~/scripts]$ ./userlist2.sh hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

