Guide to install Apache and PHP on your archlinux system and serve php-based application

# Install Packages

`pacman -S apache php php-apache php-cgi php-gd`

# Config PHP

The main PHP configuration file is well-documented and located at `/etc/php/php.ini`

## Error reporting

If you want to display errors in browser set: `display_errors = On`

## Sql Module

If you want to use mysqli operations to connect to a mysql database uncomment theese lines in php.ini

```ini
extension=mysqli
extension=pdo_mysql
```

## Sessions

If you want to use sessions go to the `[Session]` section in php.ini
Uncomment the line:

```ini
session.save_path = "/tmp"
```

# Config Apache

The main Apache configuration file is located at `/etc/httpd/conf/httpd.conf`
The default Doument Root is `/srv/http`

> On linux lammp installation the `httpd.conf` is located at `/opt/lampp/etc/httpd.conf`  
> The default Document root is: `/opt/lampp/htdocs`

Make sure to restart apache after a configuration to see it's effects.

## Document Root

By default apache serves files from it's Document Root specified in `httpd.conf`.

```conf
DocumentRoot "/srv/http"
<Directory "/srv/http">
    Options All
    AllowOverride All
    Require all granted
</Directory>
```

### Symlink to project directory

To make another folder reachable set a symlink from the document root to your project folder. Allways use absolute paths here:

```shell
ln -s /path/to/project/ /path/to/document/root
```

### Permissions

This was the main part, but mostly the apache user does not have access rights to the specified folder in your filesystem. The result is a 403 Error.

To fix this, give everybody full access to your project folder (Attention: make sure if that makes sense in your use case):

```shell
chmod -R 777 /path/to/project/
```

Make sure, that apache has also has access to the folder that contains your project (Read access is enough here)
E.g. if your project is located under `/home/username/project`use:

```shell
chmod 711 /home/username/
```

## Let Apache use PHP

By default Apache would just serve your php files as plain text files. To make apache execute your php scripts follow theese steps:

### mod_mpm

Make sure that the **mpm_event module** is **disabled** and the **mpm_prefork** module is **enabled**

In your httpd.conf

```conf
#LoadModule mpm_event_module modules/mod_mpm_event.so
LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
```

### Enable PHP module

Add to your httpd.conf:

```conf
LoadModule php_module modules/libphp.so
AddHandler php-script .php
Include	conf/extra/php_module.conf
```

## Start apache server

```shell
systemctl start   httpd.service
systemctl stop    httpd.service
systemctl restart httpd.service
systemctl enable  httpd.service  #autostart service on boot
```

# Use your application

Open your browser and go to: `localhost/your-app`

# Tips for fix some bugs

> If start httpd service failed > Check `/var/log/httpd/error_log` or run `/usr/bin/httpd -k start -DFOREGROUND`

> Check for existence of file `httpd.pid` at `/run/httpd`

> PHP My Admin Tutorial: https://techviewleo.com/install-phpmyadmin-on-arch-manjaro-garuda-linux/
