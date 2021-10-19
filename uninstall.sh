#!/bin/bash
service athena stop
chkconfig athena off #关闭服务
chkconfig --del athena
rm -rf /etc/init.d/athena
rm -rf /usr/local/bin/athena
rm -rf /usr/local/athena/

if [ ! -f "/usr/sbin/firewalld" ]; then
  iptables -D INPUT -p tcp -m state --state NEW -m tcp --dport 8120 -j ACCEPT
  /etc/init.d/iptables save
  /etc/init.d/iptables restart
  else
  firewall-cmd --permanent --zone=public --remove-port=8120/tcp
  firewall-cmd --reload
fi

echo Uninstall Success
echo -e "Uninstall Success.\n"
