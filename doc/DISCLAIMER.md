* You can access the administration panel at `yourdomain.tld/path/admin`. Users created within YunoHost can log in, provided their were given the appropriate permissions:
  * To make users administrators, give them the `grav.admin` permission.
  * To allow users to log in, without extended rights, give them the `grav.user` permission.
* Grav provides a command line interface. Refer to its documentation, but you will need to specifically call for the PHP version currently used for the app:
  * Go to your app's directory: `cd /var/www/grav` (or `grav__2`, etc. if you have multiple ones)
  * `php7.3 bin/grav ...` or `php7.3 bin/gpm ...`
* You can install plugins through the admin panel, or through the GPM.
* If installing Grav at the root of a domain, bear in mind that paths starting by `/yunohost` are reserved.
