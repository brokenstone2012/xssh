FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN chmod +x /app/start.sh && chmod +x cf.sh && chmod +x sun.sh && chmod +x sunny
CMD ["/app/start.sh","/app/cf.sh","/app/sun.sh"]
