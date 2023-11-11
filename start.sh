#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
nohup ngrok tcp 22 &&
echo "start sunny service" &&
chmod 777 /app/sunny &&
setsid /app/sunny clientid 10194247400 &&
echo "start sunny service success"
