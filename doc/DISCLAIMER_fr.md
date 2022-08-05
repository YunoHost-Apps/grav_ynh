* Vous pouvez accéder au panneau d'adminstration à l'adresse `votredomaine.tld/votrechemin/admin`. Les utilisateurs créés dans YunoHost peuvent se connecter, à condition de leur avoir octroyé la permission adéquate:
  * `grav.admin` pour qu'ils soient administrateur de Grav ;
  * `grav.user` pour qu'ils puissent se connecter, mais sans droit étendu.
* Grav offre un accès par SSH ou SFTP, activable dans le panneau de configuration de l'application dans l'administration de YunoHost.
  * Vous pouvez ainsi utiliser sa ligne de commande GPM.
    Référez-vous à sa documentation, mais sachez que vous devrez préciser la version de PHP utilisée par l'app:
    `php7.3 bin/grav ...` ou `php7.3 bin/gpm ...`
* Vous pouvez installer les extensions soit via le panneau d'administration, soit via GPM.
* Si vous installez Grav à la racin d'un domaine, sachez que les chemins d'accès commançant par `/yunohost` sont réservés.
