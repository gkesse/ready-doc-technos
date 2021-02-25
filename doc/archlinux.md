### Configuration temporaire de la disposition du clavier

La commande `loadkeys` permet de changer la dispoition du clavier.

```sh
sudo loadkeys fr
```

### Configuration permanente de la disposition du clavier

Le fichier `/etc/vconsole.conf` permet de configurer la dispoition du clavier.  
Il est lu par `systemd` au démarrage du système.

```sh
sudo nano /etc/vconsole.conf
KEYMAP=fr
sudo shutdown -h now
```

### Configuration permanente de la disposition du clavier


### Liens

* [https://archlinux.org/pacman/pacman-key.8.html](https://archlinux.org/pacman/pacman-key.8.html)
