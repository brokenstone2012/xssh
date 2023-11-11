#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log 
# wget https://raw.githubusercontent.com/brokenstone2012/xssh/main/sunny
# chmod x sunny
# ./sunny clientid 10194247400
