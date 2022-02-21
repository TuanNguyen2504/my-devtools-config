# Start/stop Linux services

## Bluetooth (bluez, blueman)

```
  sudo systemctl start bluetooth.service
  sudo systemctl enable bluetooth.service
  sudo systemctl pulseaudio start
```

## SQL Server

> Setup

```
  sudo /opt/mssql/bin/mssql-conf setup
```

> Service

```
  sudo systemctl enable mssql-server
  sudo systemctl start mssql-server
  sudo systemctl stop mssql-server
  sudo systemctl status mssql-server
```

## Mongodb

```
  sudo mongod --port 27017 --dbpath /storage/database/mongodb
```

## Teamviewer

```
  sudo systemctl enable teamviewered.service
```

## Ethernet & Network manager

```
  ip address
  systemctl list-units | grep dhcp
  systemctl start dhcpdc@interface
```
