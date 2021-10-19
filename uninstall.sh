#!/bin/bash
service athena stop
chkconfig athena off #关闭服务
chkconfig --del athena
rm -rf /etc/init.d/athena
rm -rf /usr/local/bin/athena
rm -rf /usr/local/athena/