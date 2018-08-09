# [EN] Grav for YunoHost

[![Integration level](https://dash.yunohost.org/integration/grav.svg)](https://ci-apps.yunohost.org/jenkins/job/grav%20%28Community%29/lastBuild/consoleFull)
[![Install Grav with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=grav)

> *This package allow you to install Grav quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

* http://getgrav.org/
* https://github.com/getgrav/grav

## Overview

Grav is a modern open source flat-file CMS.

**Shipped version:** 1.4.8 with admin panel

## Installation

- Click on the above *Install with YunoHost* button.
- From YunoHost admin panel, Grav should be listed in the community packages list.
- From command line: `sh sudo yunohost app install grav`.

Before actual installation, you will have to configure the following fields:

1. __Choose a domain for Grav__  
Domain for your installation (example.org).

2. __Choose a path for Grav__  
Path for your installation (/grav).

3. __Is it a public application ?__  
If public, everybody will be able to access your Grav instance (example.org/grav).

## Configuration

Depending on the chosen domain and path, open https://example.org/grav in your browser. You will then be offered to create a Grav administrator.


<hr/>

# [FR] Grav pour YunoHost

[![Integration level](https://dash.yunohost.org/integration/grav.svg)](https://ci-apps.yunohost.org/jenkins/job/grav%20%28Community%29/lastBuild/consoleFull)
[![Install Grav with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=grav)

> *Ce paquet vous permet d'installer Grav rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, veuillez consulter [cette page](https://yunohost.org/#/install) pour apprendre comment l'installer et en profiter.*

* http://getgrav.org/
* https://github.com/getgrav/grav

## Description

Grav est un CMS (système de gestion de contenu), moderne, ouvert, et sans base de données.

**Version incluse :** 1.4.8 avec panneau d'administration

## Installation

- Cliquez sur le bouton *Install with YunoHost* ci-dessus.
- Dans le panneau d'administration de YunoHost, Grav est dans la liste d'applications *community*.
- Depuis la ligne de commandes: `sh sudo yunohost app install grav`.

Avant de l'installation effective, vous devrez remplir les champs suivants :

1. __Choisissez un domaine pour Grav__  
Domaine pour votre installation (example.org, grav.example.org).

2. __Choisissez un chemin pour Grav__  
Chemin pour votre installation (/grav, /).

3. __Est-ce une page publique ?__  
Si cette application est publique, n'importe quelle personne pourra y accéder (example.org/grav).

## Configuration

Selon le domaine et le chemin choisis, ouvrez la page https://example.org/grav dans votre navigateur. Vous pourrez alors créer un administrateur pour Grav.

## Versionning

### Version 1.4.8 (11/08/18)

- Update version
- Refactoring

### Version 1.4.5 (22/05/18)

- Update version

### Version 1.3.1 (22/07/17)

- Update version

### Version 1.1.1 (13/03/17)

- Fix package_check [source](https://github.com/YunoHost/package_check)

### Version 1.1.0 (02/03/17)

- Fix Packaging [Source](https://forum.yunohost.org/t/news-about-app-management-and-packaging-in-yunohost-2-4/1379/1)

### Version 1.0.0 (11/11/15)

- First version
