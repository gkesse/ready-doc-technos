### Auteur

Je suis 
[Gerard KESSE](https://readydev.ovh/presentation/ "Accédez à mon site web (ReadyDev)"),  
Ingénieur en Développement Informatique C/C++/Qt,  
Avec à la fois des compétences en Systèmes Embarqués et en Robotique.  

* Site Web : [ReadyDev](https://readydev.ovh "Accédez à mon site web (ReadyDev)")
* Email : [tiakagerard@hotmail.com](mailto:tiakagerard@hotmail.com?subject=Contact&body=Bonjour "Me contactez par email")
* Localité : **Strasbourg - France**

### Arch Linux

Arch Linux est une distribution Linux qui met l'accent sur la simplicité.  
Sa philosophie repose sur 3 points :
* Rester simple
* Demeurer centré sur l'utilisateur. 
* Respecter la philosophie libre et communautaire. 

Nous présentons dans ce tutoriel des commandes utiles sous Arch Linux.

Passer en mode superutilisateur
```sh
su
```

Changer la dispoition dispoition du clavier 
```sh
sudo loadkeys fr
```

Mettre à jour le système
```sh
pacman -Syu
```

### Configuration temporaire de la disposition du clavier

La commande `loadkeys` permet de changer la dispoition du clavier.

```sh
sudo loadkeys fr
```

### Configuration permanente de la disposition du clavier

Le fichier `/etc/vconsole.conf` permet de configurer la dispoition du clavier.  
Il est lu par `systemd` à chaque démarrage du système.

```sh
sudo nano /etc/vconsole.conf
KEYMAP=fr
sudo shutdown -h now
```

### Configuration du chiffrement

Le concept du chiffrement est un système de sécurité.  
GnuPG est un gestionnaire de chiffrement basé sur OpenPGP.  
Il est intervient au moment de la mise à jour ou de l'installation d'un

### Liens

* [https://archlinux.org/pacman/pacman-key.8.html](https://archlinux.org/pacman/pacman-key.8.html)
* [https://archlinux.org/news/gnupg-21-and-the-pacman-keyring/](https://archlinux.org/news/gnupg-21-and-the-pacman-keyring/)