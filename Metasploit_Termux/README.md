# Metasploit Framework 6 in Termux

![Metasploit 6 running](https://i.imgur.com/yLFQhvP.png)

## How to:


### Manual
```bash
pkg install wget

wget https://raw.githubusercontent.com/OnlineHacKing/Metasploit_Termux/master/metasploit.sh

chmod +x metasploit.sh

./metasploit.sh
```

## After installation complete
Start `postgresql`
```bash
./postgresql_ctl.sh start
```
And run `msfconsole`
```bash
msfconsole
```
