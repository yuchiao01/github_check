#!/bin/bash
#curl -X GET https://openapi.twse.com.tw/v1/exchangeReport/MI_INDEX | awk -F ',' '{print $1,$5}'
TOKEN="6656222333:AAHg8XUjMgPeX9ZZfaL6bSvnigCMuXXSuaY"
CHAT_ID="-4061306117"
MESSAGE="$(curl -X GET https://openapi.twse.com.tw/v1/exchangeReport/MI_INDEX | awk -F ',' '{print $1,$5}' | grep "臺灣ESG低碳50報酬指數")"
curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MESSAGE"
