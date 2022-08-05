* You can access the administration panel at `yourdomain.tld/path/admin`. Users created within YunoHost can log in, provided their were given the appropriate permissions:
  * To make users administrators, give them the `grav.admin` permission.
  * To allow users to log in, without extended rights, give them the `grav.user` permission.
* Grav offers an SSH or SFTP access, which can be enabled in its YunoHost admin configuration panel.
  * You can thus use its GPM command line binary.
    Refer to is documentation, but bear in mind you need to call it by specifying the PHP version used by the app:
    `php7.3 bin/grav ...` or `php7.3 bin/gpm ...`
* You can install plugins through the admin panel, or through the GPM.
* If installing Grav at the root of a domain, bear in mind that paths starting by `/yunohost` are reserved.
