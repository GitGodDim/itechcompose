FROM mysql
RUN apt-get update && apt-get -y install cron
ADD ./initialscr.sh /home/
ENTRYPOINT ["/home/initialscr.sh"]
CMD ["cars"]
