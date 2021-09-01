FROM mysql
RUN apt-get update && apt-get -y install cron
COPY ./crontab /etc/cron.d/crontab
RUN chmod 777 /etc/cron.d/crontab
ENV usname=root \
pass=123456 \
hname=testsql
ADD ./initialscr.sh /home/
ENTRYPOINT ["/home/initialscr.sh"]
CMD ["cars"]
