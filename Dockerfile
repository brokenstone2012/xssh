FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN chmod -R +x /app
CMD /app/start.sh
