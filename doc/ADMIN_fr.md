* Vous pouvez accéder au panneau d'adminstration à l'adresse `__DOMAIN____PATH__/admin`. Les utilisateurs créés dans YunoHost peuvent se connecter, à condition de leur avoir octroyé la permission adéquate:
  * `grav.admin` pour qu'ils soient administrateur de Grav ;
  * `grav.user` pour qu'ils puissent se connecter, mais sans droit étendu.
* Grav offre un accès par SSH ou SFTP, activable dans le panneau de configuration de l'application dans l'administration de YunoHost.
  * Vous pouvez ainsi utiliser sa ligne de commande GPM.
    Référez-vous à sa documentation, mais sachez que vous devrez préciser la version de PHP utilisée par l'app:
      1. `cd __INSTALL_DIR__`
      2. `sudo -u __APP__ php__PHPVERSION__ bin/grav ...` ou `sudo -u __APP__ php__PHPVERSION__ bin/gpm ...`
* Vous pouvez installer les extensions soit via le panneau d'administration, soit via GPM.
* Si vous installez Grav à la racine d'un domaine, sachez que les chemins d'accès commençant par `/yunohost` sont réservés.
* Les auto-sauvegardes quotidiennes automatiques de Grav sont désactivées par défaut
* Les auto-sauvegardes de Grav ne sont pas contenues dans les sauvegardes générées par YunoHost
* Le nettoyage et la purge quotidienne du cache sont activés par défaut
