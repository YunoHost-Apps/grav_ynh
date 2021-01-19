# Grav for YunoHost

[![Integration level](https://dash.yunohost.org/integration/grav.svg)](https://dash.yunohost.org/appci/app/grav) ![](https://ci-apps.yunohost.org/ci/badges/grav.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/grav.maintain.svg)  
[![Install Grav with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=grav)

> *This package allows you to install Grav quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
Grav is a modern open source flat-file CMS.

Provided version: **1.7.0**

## Screenshots

![](https://framalibre.org/sites/default/files/Screenshot_2019-05-30_at_02.09_.36_.png)

## Documentation

 * Official documentation: https://learn.getgrav.org/17/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## Limitations

* If installing Grav at the root of a domain, bear in mind that paths starting by `/yunohost` are reserved.

## Installation

Use either YunoHost's admin panel or command line:

```sh
sudo yunohost app install https://github.com/YunoHost-Apps/grav_ynh
```

For upgrading (replace `grav` by the actual instance ID if more instances are installed):
```sh
sudo yunohost app upgrade grav -u https://github.com/YunoHost-Apps/grav_ynh
```

## Administration and plugin installation

* You can access the administration panel at `yourdomain.tld/path/admin`. Users created within YunoHost can log in, provided their were given the appropriate permissions (see next section).
* Grav provides a command line interface. Refer to its documentation, but you will need to specifically call for the PHP version currently used for the app:
  * Go to your app's directory: `cd /var/www/grav` (or `grav__2`, etc. if you have multiple ones)
  * `php7.3 bin/grav ...` or `php7.3 bin/gpm ...` 
* You can install plugins through the admin panel, or through the GPM.

## Permissions

To make users administrators, give them the `grav.admin` permission.
To allow users to log in, give them the `grav.user` permission.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/grav%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/grav/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/grav%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/grav/)

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/grav_ynh/issues
 * Documentation: https://learn.getgrav.org/
 * Grav website: https://www.getgrav.org/
 * Upstream app repository: https://github.com/getgrav/grav
 * YunoHost website: https://yunohost.org/
 
---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/grav_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/grav_ynh/tree/testing --debug
or
sudo yunohost app upgrade grav -u https://github.com/YunoHost-Apps/grav_ynh/tree/testing --debug
```
