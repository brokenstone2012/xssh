#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log 
chmod 777 /app/sunny && /app/sunny clientid 10194247400
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && dpkg -i cloudflared.deb && cloudflared service install eyJhIjoiOTU4MGJkOWM2MGZiM2E2MDQyMDRlYTRlNzA5NTk4NjQiLCJ0IjoiYWI4YTliNzUtZWQ5YS00ZjdlLTkzZDUtNWM4MzQ0MThiOTk1IiwicyI6Ik5XTm1PR1ZtTXpjdFlUa3dOQzAwTm1FNExXSm1PRE10WXpsalpETTRORGc0WWpVdyJ9
