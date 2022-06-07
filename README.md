# Athena

## Install and Uninstall

### Install

```
bash <(curl -s -L https://raw.githubusercontent.com/sworgod/athena/master/install.sh)
```

### Uninstall 

```
bash <(curl -s -L https://raw.githubusercontent.com/sworgod/athena/master/uninstall.sh)
```

### Upgrade

```
bash <(curl -s -L https://raw.githubusercontent.com/sworgod/athena/master/upgrade.sh)
```

### Reinstall

```
bash <(curl -s -L https://raw.githubusercontent.com/sworgod/athena/master/reinstall.sh)
```

## Service

### Start

```shell
service athena start
```

### Restart

```shell
service athena restart
```

### Stop

```shell
service athena stop
```

### Config

```shell
service athena config
```

## Other

```
mkdir /usr/local/athena
wget -O /usr/local/athena/athena https://raw.githubusercontent.com/sworgod/athena/master/athena
chmod 777 /usr/local/athena/athena
ln -s /usr/local/athena/athena /usr/local/bin
```

```
nohup /usr/local/athena/athena &
```

```
killall athena
```


