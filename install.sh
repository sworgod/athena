#!/bin/bash

mkdir /usr/local/athena

wget -O /usr/local/athena/athena https://raw.githubusercontent.com/Sworgod/Athena/master/athena
chmod 777 /usr/local/athena/athena
ln -s /usr/local/athena/athena /usr/local/bin
cat <<EOF >/etc/init.d/athena
#!/bin/bash
# chkconfig: - 85 15

start(){
  isStart=$(ps aux|grep -E '\.\/athena'|grep -v grep|awk '{print $2}'|xargs)
  if [ "$isStart" == '' ];then
    cd /usr/local/athena/
    nohup ./athena >/dev/null 2>&1 &
    echo "Athena Service Starting..."
    sleep 3
    cat ./config
    echo -e "\n"
  else
    echo "Athena Service Already Running"
  fi
}

stop(){
  pids=$(ps aux|grep -E '\.\/athena'|grep -v grep|awk '{print $2}'|xargs)
  for p in ${pids[@]}
  do
    kill -9 $p &>/dev/null
  done
  #killall athena
  echo "Athena Service Stopped."
  sleep 1
}
case "\$1" in
    start) start;;
    stop) stop;;
    restart)
        stop
    		sleep 1
        start
    ;;
    reload) start;;
    status)
        cat /usr/local/athena/config
        echo -e "\n"
    ;;
*)
echo "\$0 {start|stop|restart|reload|status}"
exit 4
;;
esac
EOF
chmod 777 /etc/init.d/athena
chkconfig --add athena #添加到服务列表
chkconfig athena on  #开启服务

if [ ! -f "/usr/sbin/firewalld" ]; then
  iptables -I INPUT -p tcp -m state --state NEW -m tcp --dport 8120 -j ACCEPT
  /etc/init.d/iptables save
  /etc/init.d/iptables restart
  else
  firewall-cmd --permanent --zone=public --add-port=8120/tcp
  firewall-cmd --reload
fi

service athena start