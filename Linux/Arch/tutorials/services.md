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

> Thay dổi mật khẩu password `sa`

```
  sudo /opt/mssql/bin/mssql-conf set-sa-password
```

> Thay đổi đường dẫn lưu trữ data mặc định

```sh
  # Root user
  sudo su
  systemctl stop mssql-server

  # create new location
  mkdir /storage/database/mssql/data

  # change owner
  chown mssql /storage/database/mssql/data
  # change group

  chgrp mssql /storage/database/mssql/data

  # change location
  /opt/mssql/bin/mssql-conf set filelocation.defaultdatadir storage/database/mssql/data

  # move all files to new location
  mv /var/opt/mssql/data/* /storage/database/mssql/data

  # restart server
  systemctl start mssql-server
```

> Thay đổi đường dẫn cho log file và backup

```sh
  # Log file
  sudo mkdir /storage/database/mssql/log
  sudo chown mssql /storage/database/mssql/log
  sudo chgrp mssql /storage/database/mssql/log
  sudo /opt/mssql/bin/mssql-conf set filelocation.defaultlogdir /storage/database/mssql/log
  sudo mv /var/opt/mssql/log/* /storage/database/mssql/log

  # Backup file
  sudo mkdir /storage/database/mssql/backup
  sudo chown mssql /storage/database/mssql/backup
  sudo chgrp mssql /storage/database/mssql/backup
  sudo /opt/mssql/bin/mssql-conf set filelocation.defaultbackupdir /storage/database/mssql/backup
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
