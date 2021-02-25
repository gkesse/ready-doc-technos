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

Changer la dispoition du clavier temporairement
```sh
sudo loadkeys fr
```

Changer la dispoition du clavier permanemment
```sh
sudo nano /etc/vconsole.conf
KEYMAP=fr
sudo shutdown -h now
```

Mettre à jour le système
```sh
pacman -Syu
```

Eteindre le système
```sh
shutdown -h now
```

Redémarrer le système
```sh
shutdown -r now
```

Installer le serveur ssh
```sh
pacman -S openssh
```

### Liens

* [https://archlinux.org/pacman/pacman-key.8.html](https://archlinux.org/pacman/pacman-key.8.html)
* [https://archlinux.org/news/gnupg-21-and-the-pacman-keyring/](https://archlinux.org/news/gnupg-21-and-the-pacman-keyring/)