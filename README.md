[![Integration level](https://ci-apps.yunohost.org/ci/logs/grav%20%28Community%29.svg)](https://ci-apps.yunohost.org/ci/)

[![Install Grav with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=grav)

Grav is a modern open source flat-file CMS.

> *This package allow you to install Grav quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

* http://getgrav.org/
* https://github.com/getgrav/grav

Provided version: **1.6.26**

## Installation

Use either YunoHost's admin panel or command line:

```sh
sudo yunohost app install https://github.com/YunoHost-Apps/grav_ynh
```

For upgrading (replace `grav` by the actual instance ID if more instances are installed):
```sh
sudo yunohost app upgrade grav -u https://github.com/YunoHost-Apps/grav_ynh
```

## Permissions

To make users administrators, give them the `grav.admin` permission.
To allow users to log in, give them the `grav.user` permission.

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/grav_ynh
 * Report a bug about Grav itself: https://github.com/getgrav/grav/issues
 * Documentation: https://learn.getgrav.org/
 * Grav website: https://www.getgrav.org/
 * YunoHost website: https://yunohost.org/
