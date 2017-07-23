# [EN] Grav for YunoHost

[![Install Grav with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=grav)

* http://getgrav.org/
* https://github.com/getgrav/grav

## Installation

From YunoHost admin panel:

1. Enter repository url https://github.com/YunoHost-Apps/grav_ynh
2. Configure the app
3. Click install
4. Go to the url you configured

From command line:

```sh
sudo yunohost app install -l grav https://github.com/YunoHost-Apps/grav_ynh
```

Options:

1. __Choose a domain for Grav__  
Domain for your installation (example.org).

2. __Choose a path for Grav__  
Path for your installation (/grav).

3. __Is it a public application ?__  
If public, everybody will be able to access your Grav instance (example.org/grav).

4. __Do you wish to install the Admin plugin ?__  
Grav has an optional admin panel, answer `Yes` if you want to use it.

5. __Make admin panel private ?__  
_Only valid if admin panel is installed._  
Protect the admin panel behind Yunohost authentication.

6. __Create administrator automatically ?__  
_Only works if admin panel is installed and private._  
If `Yes`, an admin account will be automatically created when you first visit your Grav instance, and you will be redirected to the admin panel. Your authentication will be handled by your YunoHost connection.  
If `No`, on your first visit to your Grav instance Grav will propose you to create a new user.

<hr/>

# [FR] Grav pour YunoHost

* http://getgrav.org/
* https://github.com/getgrav/grav

## Installation

Depuis le panneau d'administration YunoHost:

1. Entrez l'url du dépot https://github.com/YunoHost-Apps/grav_ynh
2. Configurez l'application
3. Cliquez sur installer
4. Rendez-vous à l'url que vous avez configuré

Depuis la ligne de commande:

```sh
sudo yunohost app install -l grav https://github.com/YunoHost-Apps/grav_ynh
```

Options:

1. __Choisissez un domaine pour Grav__  
Domaine pour votre installation (example.org, grav.example.org).

2. __Choisissez un chemin pour Grav__  
Chemin pour votre installation (/grav, /).

3. __Est-ce une page publique ?__  
Si cette application est publique, n'importe quelle personne pourra y accéder (example.org/grav).

4. __Souhaitez-vous installer le plugin d'administration ?__  
Grav possède un plugin d'administration optionnel, répondez `Yes` si vous souhaitez l'utiliser.

5. __Souhaitez-vous rendre l'administration privée ?__  
_Valide uniquement si le plugin d'administration est installé._  
Protège l'administration derrière l'authentification Yunohost.

6. __Souhaitez-vous créer un administrateur automatiquement ?__  
_Valide uniquement si le plugin d'administration est installé et privé._  
Si `Yes`, un compte administrateur sera automatiquement créé à votre première visite de votre instance Grav, et vous serez redirigé vers l'administration.
Votre connexion à l'administration sera associée à votre connexion YunoHost.  
Si `No`, à votre première visite de votre instance Grav, il vous sera proposé la création d'un nouvel utilisateur.


## Versionning

### Version 1.3.1 (22/07/17)

- Update version

### Version 1.1.1 (13/03/17)

- Fix package_check [source](https://github.com/YunoHost/package_check)

### Version 1.1.0 (02/03/17)

- Fix Packaging [Source](https://forum.yunohost.org/t/news-about-app-management-and-packaging-in-yunohost-2-4/1379/1)

### Version 1.0.0 (11/11/15)

- First version

### Configuration

1. Start url https://domaine.tld/grav

