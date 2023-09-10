
本週作業2
請上網找出 shell 讀檔的方法，並完成以下要求
1. 在 /root/scripts 目錄下，建立一個 userGen.sh 的 script 檔案
2. 由於 userGen.sh 無執行權限，請給予該檔 執行權限
3. 當執行該程式時，可以將 /etc/passwd 檔案中第 1、3、4、6、7欄顯示出來，並做適當的格式化輸出





filename='/etc/passwd'
IFS=$'\n'
for line in `cat $filename`;
do
        #設定user這個變數＝讀這一行的時候要印出以冒號為分隔的地一欄
        user="$(echo "$line" | awk -F ":" '{print $1}')"
        #呼叫user這個變數，並且在前面加入”user:“的字串
        echo "user: ${user}"

        #設定uid這個變數＝讀這一行的時候要印出以冒號為分隔的第三欄
        uid="$(echo "$line" | awk -F ":" '{print $3}')"
        #呼叫uid這個變數，並且在前面加入”uid:“的字串
        echo "uid: ${uid}"

        #設定gid這個變數＝讀這一行的時候要印出以冒號為分隔的第四欄
        gid="$(echo "$line" | awk -F ":" '{print $4}')"
        #呼叫gid這個變數，並且在前面加入”gid:“的字串
        echo "gid: ${gid}"

        #設定home_dir這個變數＝讀這一行的時候要印出以冒號為分隔的第六欄
        home_dir="$(echo "$line" | awk -F ":" '{print $6}')"
        #呼叫home_dir這個變數，並且在前面加入”home_dir:“的字串
        echo "home_dir: ${home_dir}"