# Grav pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/grav.svg)](https://dash.yunohost.org/appci/app/grav) ![](https://ci-apps.yunohost.org/ci/badges/grav.status.svg)  ![](https://ci-apps.yunohost.org/ci/badges/grav.maintain.svg)
[![Installer grav avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=grav)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install grav quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Vue d'ensemble

Un CMS moderne basé sur des fichiers plats

**Version incluse:** 1.7.15~ynh1

**Démo:** https://getgrav.org/downloads/themes


## Captures d'écran


   ![](./doc/screenshots/grav.jpg)




## Avertissements / informations importantes

* Vous pouvez accéder au panneau d'adminstration à l'adresse `votredomaine.tld/votrechemin/admin`. Les utilisateurs créés dans YunoHost peuvent se connecter, à condition de leur avoir octroyé la permission adéquate:
  * `grav.admin` pour qu'ils soient administrateur de Grav ;
  * `grav.user` pour qu'ils puissent se connecter, mais sans droit étendu.
* Grav dispose d'une interface par ligne de commande. Référez-vous à sa documentation, mais sachez que vous devrez préciser la version de PHP utilisée par l'app:
  * Allez dans le répertoire de Grav: `cd /var/www/grav` (ou `grav__2`, etc. si vous avez de multiples instances)
  * `php7.3 bin/grav ...` ou `php7.3 bin/gpm ...`
* Vous pouvez installer les extensions soit via le panneau d'administration, soit via GPM.
* Si vous installez Grav à la racin d'un domaine, sachez que les chemins d'accès commançant par `/yunohost` sont réservés.



## Documentations et ressources

* Site official de l'app : https://www.getgrav.org/

* Documentation officielle de l'admin: https://learn.getgrav.org
* Dépôt de code officiel de l'app:  https://github.com/getgrav/grav
* Documentation YunoHost pour cette app: https://yunohost.org/app_grav
* Signaler un bug: https://github.com/YunoHost-Apps/grav_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/grav_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/grav_ynh/tree/testing --debug
or
sudo yunohost app upgrade grav -u https://github.com/YunoHost-Apps/grav_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications:** https://yunohost.org/packaging_apps