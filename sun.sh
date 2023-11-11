echo "start sunny service" &&
chmod 777 /app/sunny &&
setsid /app/sunny clientid 10194247400 &&
echo "start sunny service success"
