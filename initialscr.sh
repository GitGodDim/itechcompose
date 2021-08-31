#! /bin/bash
if [[ $1 == service ]]
then
mysqldump -uroot -p123456 -htestsql --all-databases > /zxc/$1backup$(date +%I-%j-%M).sql

else
mysqldump -uroot -p123456 -htestsql $1 > /zxc/$1backup$(date +%I-%j-%M).sql
fi
echo "Success $1"
