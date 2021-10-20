#!/bin/bash

service athena stop

wget -O /usr/local/athena/athena https://raw.githubusercontent.com/Sworgod/Athena/master/athena
chmod 777 /usr/local/athena/athena

echo -e "Upgrade Athena Success.\n"

service athena start