* Vous pouvez accéder au panneau d'adminstration à l'adresse `votredomaine.tld/votrechemin/admin`. Les utilisateurs créés dans YunoHost peuvent se connecter, à condition de leur avoir octroyé la permission adéquate:
  * `grav.admin` pour qu'ils soient administrateur de Grav ;
  * `grav.user` pour qu'ils puissent se connecter, mais sans droit étendu.
* Grav dispose d'une interface par ligne de commande. Référez-vous à sa documentation, mais sachez que vous devrez préciser la version de PHP utilisée par l'app:
  * Allez dans le répertoire de Grav: `cd /var/www/grav` (ou `grav__2`, etc. si vous avez de multiples instances)
  * `php7.3 bin/grav ...` ou `php7.3 bin/gpm ...`
* Vous pouvez installer les extensions soit via le panneau d'administration, soit via GPM.
* Si vous installez Grav à la racin d'un domaine, sachez que les chemins d'accès commançant par `/yunohost` sont réservés.
