#!/bin/bash

service athena stop

rm -rf /etc/init.d/athena
rm -rf /usr/local/bin/athena
rm -rf /usr/local/athena/athena

echo -e "Delete Athena Success.\n"

sleep 3

wget -O /usr/local/athena/athena https://raw.githubusercontent.com/Sworgod/Athena/master/athena
chmod 777 /usr/local/athena/athena
ln -s /usr/local/athena/athena /usr/local/bin
service athena start