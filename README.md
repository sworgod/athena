# Athena

## Install

```
bash <(curl -s -L https://raw.githubusercontent.com/Sworgod/Athena/master/install.sh)
```

## Uninstall 

```
bash <(curl -s -L https://raw.githubusercontent.com/Sworgod/Athena/master/uninstall.sh)
```

## Reinstall

```
bash <(curl -s -L https://raw.githubusercontent.com/Sworgod/Athena/master/reinstall.sh)
```

```
mkdir /usr/local/athena
wget -O /usr/local/athena/athena https://raw.githubusercontent.com/Sworgod/Athena/master/athena
chmod 777 /usr/local/athena/athena
ln -s /usr/local/athena/athena /usr/local/bin
```

```
nohup /usr/local/athena/athena &
```

```
killall athena
```
