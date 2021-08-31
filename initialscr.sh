#! /bin/bash
if [[ $1 == service ]]
then
service cron start
crontab  /etc/cron.d/crontab
sleep infinity
else
mysqldump -u$usname -p$pass -h$hname $1  --result-file=/zxc/$1backup$(date +%I-%j-%M).sql
fi
echo "Success $1"
