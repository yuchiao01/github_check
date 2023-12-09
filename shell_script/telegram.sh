#!/bin/bash
#TOKEN="6656222333:AAHg8XUjMgPeX9ZZfaL6bSvnigCMuXXSuaY"
#CHAT_ID="-4061306117"
#MESSAGE="Hello from my Telegram Bot!"
#
#curl -s "https://api.telegram.org/bot$TOKEN/sendMessage" \ 
#    -d chat_id=$CHAT_ID \
#    -d text=$MESSAGE


TOKEN="6656222333:AAHg8XUjMgPeX9ZZfaL6bSvnigCMuXXSuaY"
CHAT_ID="-4061306117"
MESSAGE="雞雞我想去韓國玩"

curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MESSAGE"


