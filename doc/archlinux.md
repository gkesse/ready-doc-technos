# Auteur

Je suis 
[Gerard KESSE](https://readydev.ovh/presentation/ "Accédez à mon site web (ReadyDev)"),  
Ingénieur en Développement Informatique C/C++/Qt,  
Avec à la fois des compétences en Systèmes Embarqués et en Robotique.  

* Site Web : [ReadyDev](https://readydev.ovh "Accédez à mon site web (ReadyDev)")
* Email : [tiakagerard@hotmail.com](mailto:tiakagerard@hotmail.com?subject=Contact&body=Bonjour "Me contactez par email")
* Localité : **Strasbourg - France**

# Arch Linux

Arch Linux est une distribution Linux qui met l'accent sur la simplicité.  
Sa philosophie repose sur 3 points :
* Rester simple
* Demeurer centré sur l'utilisateur. 
* Respecter la philosophie libre et communautaire. 

Nous présentons dans ce tutoriel des commandes utiles sous Arch Linux.

* [Introduction](#introduction)
* [Serveur SSH](#Serveur-ssh)
* [Serveur X11](#serveur-x11)

# Introduction

Noter les identifiants de connexion
```
Login: osboxes
Password: osboxes.org
```

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
rm -rf /etc/pacman.d/gnupg/gpg.conf
pacman-key --init
nano /etc/pacman.d/gnupg/gpg.conf
keyserver hkp://pool.sks-keyservers.net:80
```

Mettre à jour les clés de chiffrement
```
pacman -S archlinux-keyring
pacman --populate archlinux
pacman --refresh-keys
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

# Serveur SSH

Installer le serveur ssh
```
pacman -S openssh
```

Afficher l'état du serveur ssh
```
systemctl status sshd
```

Démarrer le du serveur ssh
```
systemctl start sshd
```

Afficher l'adresse ip
```
ip a s
```

# Serveur X11

Installer le serveur x11
```
pacman -S xorg-server
pacman -S xorg-xinit
```

Installer les pilotes graphiques
```
pacman -S xf86-video-vesa
```

Installer les polices
```
pacman -S xorg-fonts-type1
pacman -S ttf-dejavu
pacman -S font-bh-ttf
pacman -S gsfonts
pacman -S sdl_ttf
pacman -S ttf-bitstream-vera
pacman -S ttf-liberation
```
