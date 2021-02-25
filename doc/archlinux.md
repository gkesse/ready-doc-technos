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
```
su
```

Changer la dispoition du clavier temporairement
```
sudo loadkeys fr
```

Changer la dispoition du clavier permanemment
```
sudo nano /etc/vconsole.conf
KEYMAP=fr
```

Configurer le gestionnaire de chiffrement
```
nano /etc/pacman.d/gnupg/gpg.conf
keyserver hkp://pool.sks.keyservers.net:80
```

Mettre à jour les clés de chiffrement
```
pacman -S archlinux-keyring
```

Mettre à jour le système
```
pacman -Syu
```

Eteindre le système
```
shutdown -h now
```

Redémarrer le système
```
shutdown -r now
```

Installer le serveur ssh
```
pacman -S openssh
```

### Liens

* [https://arcolinux.com/fix-for-key-could-not-be-looked-up-remotely/](https://arcolinux.com/fix-for-key-could-not-be-looked-up-remotely/)
