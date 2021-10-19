#!/bin/bash

mkdir /usr/local/athena

curl -o /usr/local/athena/athena https://raw.githubusercontent.com/Sworgod/Athena/master/athena
chmod 777 /usr/local/athena/athena
cat <<EOF >/etc/init.d/athena
#!/bin/bash
# chkconfig: - 85 15

start(){
  cd /usr/local/athena/
  nohup ./athena &
  echo "Athena Service Starting..."
  sleep 1
}

stop(){
  killall athena
  echo "Athena Service Stopped."
  sleep 1
}
case "$1" in
    start) start;;
    stop) stop;;
    restart) start;;
    reload) start;;
    status) start;;
*)
echo "$0 {start|stop|restart|reload|status}"
exit 4
;;
esac
EOF
chmod 777 /etc/init.d/athena
chkconfig --add athena




