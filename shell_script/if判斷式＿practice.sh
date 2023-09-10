你可以試試寫一隻簡單腳本

執行時 輸入user 會列出 /etc/passwd 的第一欄


如果代入 host 會列出 /etc/hosts 內容

#!/bin/bash

#當$1=user的時候
if [ "$1" == "user" ]; then

        #當上方條件成立的時候，就執行這行的指令（用:找出/etc/passwd的第一欄）
        print=$(awk -F ':' '{print $1}' /etc/passwd)

        #呼叫上方變數
        echo "$print"

#當$1=hosts的時候
elif [ "$1" == "hosts" ]; then

        #當$1=hosts的時候，執行這個變數，（看/etc/hosts）
        print_hosts=$(cat "/etc/hosts")

        #呼叫上方變數
        echo "$print_hosts"

#當以上兩個條件都不符合，
else

        #就印出no
        echo "no"

#結束這個腳本
fi