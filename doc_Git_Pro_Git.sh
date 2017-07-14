#================================================
# Démarrage rapide - Installation de Git
#================================================

# installer les outils basiques de Git sur Linux
sudo -i

apt-get update
apt-get upgrade

apt-get install git-all

# definir la langue
export LANG=fr_FR.UTF-8

#------------------------------------------------
# installer les dépendances
apt-get install libcurl4-gnutls-dev 
apt-get install libexpat1-dev 
apt-get install gettext
apt-get install libz-dev 
apt-get install libssl-dev    

# compiler et installer
tar -zxf git-1.9.1.tar.gz
cd git-1.9.1
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info

# obtenir Git par Git lui-même pour les mises à jour
git clone git://git.kernel.org/pub/scm/git/git.git

#================================================
# Démarrage rapide - Paramétrage à la première utilisation de Git
#================================================

# renseigner votre nom et votre adresse de courriel
git config --global user.name "Kernelly Blavatsky"
git config --global user.email kernelly.blavatsky@outlook.fr

#------------------------------------------------
# configurer l’éditeur de texte
git config --global core.editor nano

#------------------------------------------------
# vérifier vos réglages
git config --list

# vérifier la valeur effective d’un paramètre particulier
git config <paramètre>

git config user.name

#================================================
# Démarrage rapide - Obtenir de l’aide
#================================================

# obtenir les pages de manuel pour toutes les commandes de Git
git help <commande>
git <commande> --help
man git-<commande>

# obtenir la page de manuel pour la commande config
git help config

#================================================
# Les bases de Git - Démarrer un dépôt Git
#================================================

# Initialisation d’un dépôt Git dans un répertoire existant
git init

# suivre un nouveau fichier
git add *.c
git add LICENSE

# Valider vos modifications
git commit -m 'initial project version'

#------------------------------------------------
# Cloner un dépôt existant
git clone [url]

# cloner la bibliothèque logicielle Git appelée libgit2
git clone https://github.com/libgit2/libgit2

# cloner le dépôt dans un répertoire nommé différemment
git clone https://github.com/libgit2/libgit2 monlibgit2

#================================================
# Les bases de Git - Enregistrer des modifications dans le dépôt
#================================================

# Vérifier l’état des fichiers
git status

# ajouter un nouveau fichier au projet 
echo 'Mon Projet' > LISEZMOI

# suivre un nouveau fichier
git add LISEZMOI

# apporter encore une petite modification au fichier
nano CONTRIBUTING.md

# prendre en compte l’état actuel de la copie de travail
git add CONTRIBUTING.md

# voir les modifications de façon plus compacte
git status -s

#------------------------------------------------
# énumérer les patrons de noms de fichiers à ignorer
.gitignore

# visualiser un fichier
cat .gitignore

# ignorer tout fichier se terminant en .o ou .a
*.[oa]

# ignorer tous les fichiers se terminant par un tilde (~)
*~

# règles de construction des patrons
->  les lignes vides ou commençant par # sont ignorées ;
->  les patrons standards de fichiers sont utilisables ;
->  si le patron se termine par une barre oblique (/), 
il indique un répertoire ;
->  un patron commençant par un point d’exclamation (!)
indique des fichiers à inclure malgré les autres règles.

# Les patrons standards de fichiers
->  (*) correspond à un ou plusieurs caractères
->  [abc] correspond à un des trois caractères listés
->  (?) correspond à un unique caractère
->  ([0-9]) correspond à un caractère dans l’intervalle
->  a/**/z correspond donc à a/z, a/b/z, a/b/c/z etc...

# pas de fichier .a
*.a

# mais suivre lib.a malgré la règle précédente
!lib.a

# ignorer uniquement le fichier TODO à la racine du projet
/TODO

# ignorer tous les fichiers dans le répertoire build
build/

# ignorer doc/notes.txt, mais pas doc/server/arch.txt
doc/*.txt

# ignorer tous les fichiers .txt sous le répertoire doc/
doc/**/*.txt

#------------------------------------------------
# visualiser ce qui a été modifié mais pas encore indexé
git diff

# comparer les fichiers indexés et le dernier instantané
git diff --staged

# visualiser ce qui a été indexé jusqu’à maintenant
git diff --cached

#------------------------------------------------
# Valider vos modifications
git commit

# spécifier votre message de validation 
git commit -m "Story 182: Fix benchmarks for speed"

# placer automatiquement tout fichier déjà en suivi de version
# dans la zone d’index avant de réaliser la validation
git commit -a -m 'added new benchmarks'

#------------------------------------------------
# effacez simplement le fichier dans votre copie de travail
rm PROJECTS.md

# l’effacement du fichier est indexé
git rm PROJECTS.md

# abandonner le suivi de version d’un fichier
git rm --cached LISEZMOI

# spécifier des noms de fichiers ou de répertoires, 
# ou des patrons de fichiers
git rm log/\*.log

# éliminer tous les fichiers se terminant par ~
git rm \*~

#------------------------------------------------
# renommer un fichier
git mv nom_origine nom_cible

git mv LISEZMOI.txt LISEZMOI

#================================================
# Les bases de Git - Visualiser l’historique des validations
#================================================

# énumèrer en ordre chronologique inversé les commits réalisés
git log

# montrer les différences introduites entre chaque validation
# limiter la sortie de la commande aux deux entrées les plus récentes
git log -p -2

# visualiser des statistiques résumées pour chaque commit
git log --stat    

# afficher chaque commit sur une seule ligne
git log --pretty=oneline

# décrire précisément le format de sortie
git log --pretty=format:"%h - %an, %ar : %s"

# ajouter un joli graphe en caractères ASCII
# pour décrire l’historique des branches et fusions
git log --pretty=format:"%h %s" --graph

#------------------------------------------------
# affiche la liste des commits des deux dernières semaines
git log --since=2.weeks

# trouver la dernière validation qui a ajouté ou retiré
# une référence à une fonction spécifique
git log -Snom_de_fonction

# visualiser quels commits modifiant les fichiers de test 
# dans l’historique du code source de Git ont été validés 
# par Junio Hamano
git log --pretty="%h - %s" --author=gitster \
--since="2008-10-01" --before="2008-11-01" \
--no-merges -- t/

#================================================
# Les bases de Git - Annuler des actions
#================================================

# rectifier le message de validation
git commit --amend

# désindexer un fichier
git reset HEAD CONTRIBUTING.md

# annuler des modifications
git checkout -- CONTRIBUTING.md

#------------------------------------------------
# Réinitialiser un fichier modifié
git checkout -- GAnnuler.c

#================================================
# Les bases de Git - Travailler avec des dépôts distants
#================================================

# visualiser les serveurs distants
git remote    

# nom par défaut que Git donne au serveur à partir 
# duquel vous avez cloné
origin

# montrer l’URL que Git a stockée pour chaque nom court
git remote -v

# ajouter un nouveau dépôt distant Git comme nom court
git remote add [nomcourt] [url]

git remote add pb https://github.com/paulboone/ticgit

# récupérer toute l’information que Paul a mais que vous 
# ne souhaitez pas l’avoir encore dans votre branche
git fetch pb

#------------------------------------------------
# obtenir les données des dépôts distants
git fetch [remote-name]

# récupèrer tout ajout qui a été poussé vers ce dépôt 
# depuis que vous l’avez cloné
git fetch origin

#------------------------------------------------
# Pousser son travail sur un dépôt distant
git push [nom-distant] [nom-de-branche]

# pousser votre travail vers le serveur amont
git push origin master

#------------------------------------------------
# Inspecter un dépôt distant
git remote show [nom-distant]

# donner la liste des URL pour le dépôt distant ainsi que 
# la liste des branches distantes suivies
git remote show origin

# renommer des dépôts distants
git remote rename pb paul

# retirer un dépôt distant
git remote rm paul

#================================================
# Les bases de Git - Étiquetage
#================================================

# Lister les étiquettes existantes
git tag

# rechercher les étiquettes correspondant à un motif
git tag -l 'v1.8.5*'

# Créer des étiquettes annotées
git tag -a v1.4 -m 'ma version 1.4'

# visualiser les données de l’étiquette à côté du commit
git show v1.4

# créer une étiquette légère
git tag v1.4-lg

# visualiser les données de l’étiquette légère à côté 
# du commit
git show v1.4-lg

# étiqueter des commits plus anciens
git tag -a v1.2 9fceb02

# Partager les étiquettes
git push origin [nom-du-tag]

# pousser les étiquettes après les avoir créées localement
git push origin v1.5

# transférer toutes les nouvelles étiquettes vers le 
# serveur distant
git push origin --tags

# créer une branche à partir de cette étiquette
git checkout -b version2 v2.0.0

#================================================
# Les bases de Git - Les alias Git
#================================================

# définir un alias pour chaque commande
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# utiliser les alias
git checkout -> git co
git branch -> git br
git commit -> git ci
git status -> git st

# créer un alias pour désindexer
git config --global alias.unstage 'reset HEAD --'

# utiliser un alias pour désindexer
git reset HEAD fileA -> 
git unstage fileA

# ajouter un alias last
git config --global alias.last 'log -1 HEAD'

# utiliser un alias last
git log -1 HEAD ->
git last

# écrivez vos propres outils pour travailler dans un dépôt
git config --global alias.visual "!gitk"

# utiliser vos propres outils pour travailler dans un dépôt
git visual -> gitk

#================================================
# Les branches avec Git - Les branches en bref
#================================================

# Créer une nouvelle branche
git branch testing

# pointeur vers la branche principale
master

# pointeur vers la branche actuelle
HEAD

# vérifier les branches pointées
git log --oneline --decorate

# basculer sur une branche existante
git checkout testing

# Retournons sur la branche master
git checkout master

# afficher l’historique de vos commits avec des graphes
git log --oneline --decorate --graph --all

#================================================
# Les branches avec Git - Branches et fusions : les bases
#================================================

# créer une branche et y basculer tout de suite
git checkout -b prob53

# fusionner les branches correctif et master
git checkout master
git merge correctif

# effacer la branche correctif 
git branch -d correctif

# fusion avancée rapide
git checkout master
git merge correctif
----------
Updating f42c576..3a0874c
Fast-forward

# fusion à trois sources
git checkout master
git merge correctif
----------
Merge made by the 'recursive' strategy.

# fusion conflit
git checkout master
git merge correctif
----------
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.

#================================================
# Les branches avec Git - Gestion des branches
#================================================

# obtenir la liste des branches courantes
git branch

# visualiser la liste des derniers commits sur chaque branche
git branch -v    

# Marque de la branche actuelle pointée par HEAD
git branch
----------
* master

# voir quelles branches ont déjà été fusionnées 
git branch --merged

# visualiser les branches qui contiennent des travaux qui 
# n’ont pas encore été fusionnés
git branch --no-merged

#================================================
# Les branches avec Git - Branches distantes
#================================================

# obtenir la liste complète de ces références distantes
git ls-remote
git remote show

# nom par défaut de la branche locale
master

# nom par défaut du serveur distant
origin

# nom par défaut de la branche distante
origin/master

# synchroniser vos travaux
git fetch origin

# ajouter un serveur aux références distantes
git remote MY_REF MY_SERVER

# synchroniser vos travaux à partir d'une référence
git fetch MY_REF

# nom par défaut de la branche distante d'une référence
MY_REF/master

# pousser une branche sur un serveur distant
git push (serveur distant) (branche)
git push origin correctionserveur

# pousser une branche locale vers une branche distante #
# nommée différemment
git push origin correctionserveur:branchegeniale

# configurer ce délai de mise en cache
git config --global credential.helper cache

# fusionner ce travail dans votre branche de travail actuelle
git merge origin/correctionserveur

# créer votre propre branche correctionserveur pour 
# pouvoir y travailler
git checkout -b correctionserveur origin/correctionserveur

# créer une branche locale avec le même nom que celui 
# de la branche distante
git checkout --track origin/correctionserveur

# créer une branche locale avec le même nom que
# celui de la branche distante
git checkout -b cs origin/correctionserveur

# associer une branche locale à une branche distante
git branch -u origin/correctionserveur

# voir quelles branches de suivi vous avez configurées
git branch -vv

# 2 commits locaux qui n’ont pas été poussés au serveur
git branch -vv
----------
iss53     7e424c3 [origin/iss53: ahead 2]
ahead 2

# branche suivie et à jour
git branch -vv
----------
master    1ae2a45 [origin/master]

# 1 commit qui n’a pas été encore intégré localement
git branch -vv
----------
correctionserveur f8674d9 [equipe1/correction-serveur-ok: ahead 3, behind 1]
----------
behind 1

# branche locale qui ne suit aucune branche distante
git branch -vv
----------
test   5ea463a

# synchroniser (fetch) toutes vos branches distantes 
# depuis les serveurs
git fetch --all

# récupèrer et fusionner une branche distante
git pull

# effacer une branche distante
git push origin --delete correctionserveur

#================================================
# Les branches avec Git - Rebaser (Rebasing)
#================================================

# rebaser une branche simple
git checkout experience
git rebase master
git checkout master
git merge client
git branch -d client

# rebaser une branche complexe
git rebase --onto master serveur client

# rebaser une branche simple indépendant
git rebase master serveur
git checkout master
git merge serveur
git branch -d serveur

# Les dangers du rebasage
-> Ne rebasez jamais des commits qui ont déjà été poussés 
sur un dépôt public. (vous abandonnez les commits existants)

# forcer l’écrasement de l’historique sur le serveur
git push --force

# Rebaser au-dessus de travaux rebasés
git rebase equipe1/master

# Rebaser au-dessus de travaux rebasés simple
git pull --rebase

# changer la valeur du paramètre de configuration 
# pull.rebase
git config --global pull.rebase true

#================================================
# Git sur le serveur - Protocoles
#================================================

# Protocoles utilisés
-> local
-> HTTP
-> Secure Shell (SSH)
-> Git

# cloner un dépôt local
git clone /opt/git/project.git

# cloner un dépôt local avec file
git clone file:///opt/git/project.git

# ajouter un dépôt local à un projet Git existant
git remote add local_proj /opt/git/project.git

# récupérer un dépot local
git pull /home/john/project

# URL utilisé via le protocole HTTP intelligent
# URL pour visualiser le dépôt distant (GitHub)
https://github.com/schacon/simplegit

# permettre un accès en lecture seule à votre dépôt 
# via le protocole HTTP idiot
cd /var/www/htdocs/
git clone --bare /chemin/vers/projet_git projetgit.git
cd projetgit.git
mv hooks/post-update.sample hooks/post-update
chmod a+x hooks/post-update

# cloner un dépôt distant via le protocole HTTP idiot 
git clone https://exemple.com/projetgit.git

# cloner un dépôt Git à travers SSH
git clone ssh://utilisateur@serveur/projet.git

# cloner un dépôt Git à travers SSH avec la syntaxe SCP
git clone utilisateur@serveur:projet.git

# Port dédié au daemon Git
-> 9418

# Pour qu’un dépôt soit publié via le protocole Git
-> daemon : xinetd 
-> fichier : git-daemon-export-ok

#================================================
# Git sur le serveur - Installation de Git sur un serveur
#================================================

# cloner votre dépôt en créant un nouveau dépôt nu
git clone --bare mon_project mon_projet.git

# cloner votre dépôt en créant un nouveau dépôt nu
# équivalence
cp -Rf mon_projet/.git mon_projet.git

# Copie du dépôt nu sur un serveur via le protocole SSH
scp -r mon_projet.git utilisateur@git.exemple.com:/srv/git

# cloner votre dépôt via le protocole SSH
git clone utilisateur@git.exemple.com:/srv/git/mon_projet.git

# ajouter automatiquement les droits de groupe en écriture 
# à un dépôt
ssh utilisateur@git.exemple.com
cd /srv/git/mon_projet.git
git init --bare --shared

#================================================
# Git sur le serveur - Génération des clés publiques SSH
#================================================

# vérifier si vous avez déjà une clé publique SSH
cd ~/.ssh
ls
----------
id_rsa -> clé privé
id_rsa.pub -> clé publique

# générer une clé publique
ssh-keygen
File -> ENTER
Passphrase -> ENTER
Same Passphrase -> ENTER

# afficher la clé publique
cat ~/.ssh/id_rsa.pub

#================================================
# Git sur le serveur - Mise en place du serveur
#================================================

# créer un utilisateur git et un répertoire .ssh
sudo adduser git
su git
cd
mkdir .ssh && chmod 700 .ssh
touch .ssh/authorized_keys && chmod 600 .ssh/authorized_keys

# ajouter les clés publiques au fichier authorized_keys 
# de l’utilisateur git
cat /tmp/id_rsa.john.pub >> ~/.ssh/authorized_keys
cat /tmp/id_rsa.josie.pub >> ~/.ssh/authorized_keys
cat /tmp/id_rsa.jessica.pub >> ~/.ssh/authorized_keys

# créer un dépôt vide nu
cd /opt/git
mkdir project.git
cd project.git
git init --bare

# pousser la première version de leur projet vers ce dépôt
cd monproject
git init
git add .
git commit -m 'première validation'
git remote add origin git@gitserveur:/opt/git/projet.git
git push origin master

# cloner le dépôt et y pousser leurs modifications
git clone git@gitserveur:/opt/git/projet.git
cd projet
nano LISEZMOI
git commit -am 'correction du fichier LISEZMOI'
git push origin master

# voir si `git-shell` est déjà déclaré
cat /etc/shells

# s'assurer que git-shell est installé sur le système
which git-shell

# ajouter le chemin complet vers git-shell
sudo nano /etc/shells 

# éditer le shell de l’utilisateur
chsh <utilisateur> -s <shell>
sudo chsh git -s `which git-shell`

# vérifier que l’utilisateur git ne peut plus utiliser 
# la connexion SSH pour pousser et tirer sur des dépôts Git
ssh git@gitserveur
----------
fatal: Interactive git shell is not enabled.

#================================================
# Git sur le serveur - Démon (Daemon) Git
#================================================

# mettre en place le protocole Git
git daemon --reuseaddr --base-path=/opt/git/ /opt/git/
----------
--reuseaddr : redémarrer sans devoir attendre que 
les anciennes connexions expirent 
----------
--base-path : cloner des projets sans devoir spécifier 
le chemin complet
----------
/opt/git/ : endroit où chercher des dépôts à exporter

# Si vous utilisez un pare-feu
-> rediriger le port 9418

# Transformer ce processus en daemon
/etc/event.d/local-git-daemon
----------
start on startup
stop on shutdown
exec /usr/bin/git daemon \
--user=git --group=git \
--reuseaddr \
--base-path=/opt/git/ \
/opt/git/
respawn

# démarrer automatiquement votre daemon Git 
initctl start local-git-daemon

# spécifier à Git quels dépôts sont autorisés en accès 
# non authentifié
cd /chemin/au/projet.git
touch git-daemon-export-ok

# créer un fichier vide
touch MY_FILE

#================================================
# Git sur le serveur - HTTP intelligent
#================================================

# installer un serveur web apache
sudo apt-get install apache2 apache2-utils
a2enmod cgi alias env (1)
----------
-> (1) : activer les modules mod_cgi, mod_alias, et mod_env

# ajouter quelques lignes à la configuration d’Apache
SetEnv GIT_PROJECT_ROOT /opt/git
SetEnv GIT_HTTP_EXPORT_ALL
ScriptAlias /git/ /usr/libexec/git-core/git-http-backend/

# indiquer à Apache qu’il doit accepter les requêtes 
# sur ce chemin
<Directory "/usr/lib/git-core*">
Options ExecCGI Indexes
Order allow,deny
Allow from all
Require all granted
</Directory>

# créer un fichier .htaccess contenant les mots de 
# passe de tous les utilisateurs valides
htdigest -c /opt/git/.htpasswd "Git Access" schacon

#================================================
# Git sur le serveur - GitWeb
#================================================

# serveur léger
lighttpd 
webrick 

# démarrer une instance temporaire de serveur GitWeb
git instaweb --httpd=webrick

# arrêter une instance temporaire de serveur GitWeb
git instaweb --httpd=webrick --stop

# générer un script CGI personnalisé
git clone git://git.kernel.org/pub/scm/git/git.git
cd git/
make GITWEB_PROJECTROOT="/opt/git" prefix=/usr gitweb
sudo cp -Rf gitweb /var/www/

# paramétrer dans Apache l’utilisation de CGI pour ce script
<VirtualHost *:80>
ServerName gitserver
DocumentRoot /var/www/gitweb
<Directory /var/www/gitweb>
Options ExecCGI +FollowSymLinks +SymLinksIfOwnerMatch
AllowOverride All
order allow,deny
Allow from all
AddHandler cgi-script cgi
DirectoryIndex gitweb.cgi
</Directory>
</VirtualHost>

# visualiser vos dépôts en ligne
http://gitserveur/

#================================================
# Git sur le serveur - GitLab
#================================================

# télécharger une image de machine virtuelle ou un installateur rapide
https://bitnami.com/stack/gitlab

# accéder à l'écran d’identification
alt + ->
----------
-> indique l’adresse IP, l’utilisateur et le mot de passe 
par défaut de l’instance GitLab

# suivre les instructions du readme du GitLab Community Edition
https://gitlab.com/gitlab-org/gitlab-ce/tree/master

# utilisateur par défaut
admin@local.host

# mot de passe par défaut
5iveL!fe

# URL du projet de l’utilisateur jane avec un projet appelé projet
http://serveur/jane/projet

# supprimer un utilisateur
-> Bloquer (Blocking) un utilisateur l’empêche de s’identifier 
sur l’instance Gitlab
-> Détruire (Destroying) un utilisateur, par contre, l’efface 
complètement de la base de données et du système de fichiers

# groupe GitLab
-> assemblage de projets, accompagné des informations de droits 
d’accès à ces projets

# projet GitLab
-> correspond grossièrement à un dépôt Git unique

# première chose à faire avec GitLab
-> créer un nouveau projet : cliquer sur l’icône + sur la barre d’outils
-> connecter un nouveau projet à un dépôt Git local

# créer un dépôt distant nommé gitlab pointant vers l’hébergement distant
git remote add gitlab https://serveur/espace_de_nom/projet.git

# créer une copie locale du dépôt
git clone https://serveur/espace_de_nom/projet.git

# coopérer sur un projet GitLab
-> donner à un autre utilisateur un accès direct en écriture 
sur le dépôt Git
-> utiliser des requêtes de tirage (pull request)

# ajouter un utilisateur à un projet
-> sélectionner la section Members des paramètres du projet
-> associer le nouvel utilisateur à un niveau d’accès

# niveau d’accès Developer
-> permet pousser des commits et des branches directement 
sur le dépôt sans restriction

# requêtes de tirage (pull request)
-> permet à n’importe quel utilisateur qui peut voir le 
projet d’y contribuer de manière contrôlée

# utilisateurs avec un accès direct
-> créer une branche
-> pousser des commits dessus
-> ouvrir une requête de tirage (pull request) depuis leur branche 
vers master ou toute autre branche

# utilisateurs qui n’ont pas la permission de pousser sur un dépôt
-> faire un fork (créer leur propre copie)
-> pousser des commits sur cette copie
-> ouvrir une requête de tirage (pull request) depuis leur fork 
vers le projet principal
----------
-> permet au propriétaire de garder le contrôle total sur ce qui 
entre dans le dépôt et quand, tout en autorisant les contributions 
des utilisateurs non fiables

# requêtes de fusion (merge requests) et les problèmes (issues)
-> principaux moyens pour mener des discussions au long cours 
dans GitLab
----------
-> peuvent être assignés à des utilisateurs
-> peuvent être assemblés en jalons (milestones)

# requête de fusion (merge requests)
-> permet une discussion ligne par ligne sur les modifications 
proposées, ainsi qu’un fil de discussion général. 
----------
-> permet une sorte de revue de code légère

# héberger vos projets Git sur un site externe 
# dédié à l’hébergement
https://git.wiki.kernel.org/index.php/GitHosting

#================================================
# Git distribué - Développements distribués
#================================================

# Gestion Centralisée
-> Un concentrateur ou dépôt central accepte le code 
et tout le monde doit synchroniser son travail avec
-> Les développeurs sont des nœuds, des consommateurs du 
concentrateur, seul endroit où ils se synchronisent
-> le premier à pousser ses modifications le fera 
sans encombre
-> Le second développeur doit fusionner les 
modifications du premier dans son dépôt local avant de
pousser ses modifications pour ne pas écraser les 
modifications du premier

# Mode du gestionnaire d’intégration
-> mode de fonctionnement où chaque développeur a un accès 
en écriture à son propre dépôt public et en lecture à tous 
ceux des autres
-> un dépôt canonique représente le projet « officiel »

# Mode du gestionnaire d’intégration
# contribuer au projet
-> créez votre propre clone public du projet et poussez 
vos modifications dessus
-> envoyer une demande au mainteneur de projet pour qu’il 
tire vos modifications dans le dépôt canonique

# Mode du gestionnaire d’intégration
# mainteneur
-> ajouter votre dépôt comme dépôt distant, 
-> tester vos modifications localement, 
-> les fusionner dans sa branche 
-> et les pousser vers le dépôt public

# Mode du gestionnaire d’intégration
# fonctionnement
-> Le mainteneur du projet pousse vers son dépôt public.
-> Un contributeur clone ce dépôt et introduit 
des modifications.
-> Le contributeur pousse son travail sur son dépôt public.
-> Le contributeur envoie au mainteneur un e-mail 
de demande pour tirer ses modifications depuis son dépôt.
-> Le mainteneur ajoute le dépôt du contributeur comme 
dépôt distant et fusionne les modifications localement.
-> Le mainteneur pousse les modifications fusionnées 
sur le dépôt principal.

# Mode dictateur et ses lieutenants
-> utile dans des projets très gros ou pour lesquels 
un ordre hiérarchique existe
-> variante de la gestion multi-dépôt
-> Des gestionnaires d’intégration gèrent certaines 
parties du projet. Ce sont les lieutenants
-> Tous les lieutenants ont un unique gestionnaire 
d’intégration, le dictateur bienveillant
-> Le dépôt du dictateur sert de dépôt de référence à 
partir duquel tous les collaborateurs doivent tirer

# Mode dictateur et ses lieutenants
# fonctionnement
-> Les simples développeurs travaillent sur la branche 
thématique et rebasent leur travail sur master. 
La branche master est celle du dictateur.
-> Les lieutenants fusionnent les branches thématiques 
des développeurs dans leur propre branche master.
-> Le dictateur fusionne les branches master de 
ses lieutenants dans sa propre branche master.
-> Le dictateur pousse sa branche master sur le dépôt de 
référence pour que les développeurs se rebasent dessus.

#================================================
# Git distribué - Contribution à un projet
#================================================

# réaliser la contribution à un projet
-> taille du corps de contributeurs
-> mode de gestion utilisé pour le projet
-> gestion des accès en écriture

# créer des commits qui serviront à fournir des patchs
-> ne pas soumettre de patchs comportant des erreurs 
d’espace (caractères espace inutiles en fin de ligne ou 
entrelacement d’espaces et de tabulations). 

# vérifier les patchs avant de valider
git diff --check

# indexer partiellement des fichiers
git add --patch

# écrire des messages de validation
-> débuter par une ligne unique d’au plus 50 caractères
-> suivie d’une ligne vide, 
-> suivie d’une explication plus détaillée

# explication détaillée
-> inclue la motivation de la modification en contrastant 
le nouveau comportement par rapport à l’ancien
-> utiliser le présent de l’impératif ou des verbes 
substantivés dans le message
-> utilisez des ordres

# explication détaillée
# exemples
-- Au lieu de dire :
-> « J’ai ajouté des tests pour » ou 
-> « En train d’ajouter des tests pour »
----------
-- Dire:
-> « Ajoute des tests pour »
-> « Ajout de tests pour »

#------------------------------------------------
# Cas d’une petite équipe privée

# John, clone le dépôt, fait une modification et valide 
# localement
git clone john@githost:simplegit.git
cd simplegit/
vim lib/simplegit.rb
git commit -am 'Eliminer une valeur par défaut invalide'

# Jessica, fait la même chose. 
# Elle clone le dépôt et valide une modification
git clone jessica@githost:simplegit.git
cd simplegit/
vim TODO
git commit -am 'Ajouter une tache reset'

# Jessica pousse son travail sur le serveur
git push origin master

# John tente aussi de pousser ses modifications
git push origin master
----------
error: impossible de pousser des références 
vers 'john@githost:simplegit.git'
----------
Git nécessite une fusion des modifications locale

# John doit récupérer les modifications de Jessica 
# et les fusionner avant d’être autorisé à pousser
git fetch origin
git merge origin/master
git push origin master

# Jessica a travaillé sur une branche thématique. 
# Elle a créé une branche thématique nommée prob54 
# et réalisé trois validations sur cette branche. 
----------

# Jessica souhaite se synchroniser sur le travail de John
git fetch origin

# Jessica pense que sa branche thématique est prête 
# mais elle souhaite savoir si elle doit fusionner son travail 
# avant de pouvoir pousser.  
git log --no-merges issue54..origin/master

# ne montrer que la liste des commits qui sont sur la seconde 
# branche (dans ce cas origin/master) et qui ne sont pas sur 
# la première (dans ce cas issue54).
git log --no-merges issue54..origin/master
----------
issue54..origin/master

# Jessica peut fusionner sa branche thématique (issue54) dans 
# sa branche (master), fusionner le travail de John (origin/master)
# dans sa branche (master), puis pousser le résultat sur le serveur. Premièrement, elle rebascule sur sa branche master pour intégrer son travail :
git checkout master
git merge issue54
git push origin master

# un des schémas les plus simples
-> travaillez sur une branche thématique
-> fusionnez dans votre branche master
-> récupérez origin/master et la fusionnez si elle a changé
-> poussez le résultat sur la branche master du serveur.

#------------------------------------------------
# Équipe privée importante

# mode d’opération de type « gestionnaire d’intégration »
-> John et Jessica travaillent sur une première fonctionnalité, 
-> tandis que Jessica et Josie travaillent sur une autre
-> le travail des groupes est intégré par certains ingénieurs, 
-> le dépôt principal ne peut être mise à jour que par ces ingénieurs

# Jessica clone son dépôt, 
# elle décide de travailler sur la fonctionA en premier. 
# Elle crée une nouvelle branche pour cette fonction 
# et travaille un peu dessus
git checkout -b fonctionA
vim lib/simplegit.rb
git commit -am 'Ajouter une limite à la fonction de log'

# Jessica pousse les commits de sa branche fonctionA sur le serveur
git push -u origin fonctionA

# Jessica envoie un courriel à John
-> elle a poussé son travail dans la branche appelée fonctionA
-> il peut l’inspecter

# Jessica décide de commencer à travailler sur la fonctionB 
# avec Josie
git fetch origin
git checkout -b fonctionB origin/master

# Jessica réalise quelques validations sur la branche fonctionB
vim lib/simplegit.rb
git commit -am 'made the ls-tree function recursive'
vim lib/simplegit.rb
git commit -am 'add ls-files'

# Jessica reçoit un mail de Josie
-> une branche avec un premier travail a déjà été poussé 
sur le serveur en tant que fonctionBee

# Jessica récupère les modifications de Josie
git fetch origin

# Jessica peut à présent fusionner
git merge origin/fonctionBee

# Jessica doit pousser son travail fusionné dans sa branche 
# fonctionB sur la branche fonctionBee du serveur
git push -u origin fonctionB:fonctionBee
----------
-> option -u : pour faciliter les poussées et les tirages

# John envoie un courriel à Jessica 
-> il a poussé des modifications sur la branche fonctionA 
-> et lui demander de les vérifier. 

# Jessica lance git fetch pour tirer toutes ces modifications 
git fetch origin

# Jessica peut voir ce qui a été modifié avec git log
git log fonctionA..origin/fonctionA

# Jessica fusionne le travail de John dans sa propre branche fonctionA
git checkout fonctionA
git merge origin/fonctionA

# Jessica veut régler quelques détails. 
# Elle valide donc encore et pousse ses changements sur le serveur
git commit -am 'details regles'
git push

# Jessica, Josie et John informent les intégrateurs que les branches 
# fonctionA et fonctionB du serveur sont prêtes

#------------------------------------------------
# Projet public dupliqué

# Contribuer à un projet public est assez différent
-> présenter le travail au mainteneur
-> vous n’avez pas la possibilité de mettre à jour des branches 

# serveurs Git qui proposent facilement la duplication de dépôt. 
-> GitHub, 
-> BitBucket, 
-> Google Code, 
-> repo.or.cz

# contributions 
-> sous forme de patch via courriel

# cloner le dépôt principal, 
# créer une nouvelle branche thématique pour le patch 
# ou la série de patchs que seront votre contribution, 
git clone (url)
cd projet
git checkout -b fonctionA
git commit
git commit

# votre branche de travail est prête 
# et que vous êtes prêt à la fournir au mainteneur
-> rendez-vous sur la page du projet 
-> et cliquez sur le bouton « Fork » 
-> pour créer votre propre projet dupliqué 
-> sur lequel vous aurez les droits en écriture. 
-> Vous devez alors ajouter l’URL de ce nouveau dépôt 
-> en tant que second dépôt distant, dans notre cas nommé macopie

# ajouter l’URL de ce nouveau dépôt
git remote add macopie (url)

# pousser la branche sur laquelle vous travaillez 
# sur une branche distante
git push -u macopie fonctionA

# notifier le mainteneur
-> Ce processus est souvent appelé une demande de tirage (pull request) 
-> et vous pouvez la générer soit via le site web

# demande de tirage (pull request) 
git request-pull origin/master macopie

# soumettre un second sujet de travail au projet
git checkout -b fonctionB origin/master
-> (travail)
git commit
git push macopie fonctionB
-> (email au maintainer)
git fetch origin

# rebaser cette branche au sommet de origin/master, 
# résoudre les conflits pour le mainteneur 
# et soumettre de nouveau vos modifications
git checkout fonctionA
git rebase origin/master
git push -f macopie fonctionA
----------
-> Historique ressemble à Historique des validations sur fonctionA
-> option -f : pour forcer le remplacement de la branche fonctionA

# démarrez une nouvelle branche à partir de la branche origin/master 
# collez les modifications de fonctionB en résolvant les conflits, 
# changez l’implémentation et poussez en tant que nouvelle branche
git checkout -b fonctionBv2 origin/master
git merge --no-commit --squash fonctionB
-> (changement d implémentation)
git commit
git push macopie fonctionBv2
----------
-> option --squash : prend tout le travail de la branche à fusionner 
et le colle dans un commit sans fusion au sommet de la branche extraite
-> option --no-commit : ne pas enregistrer automatiquement une validation

#------------------------------------------------
# Projet public via courriel

# grands projets
-> procédures établies pour accepter des patchs

# créez une branche thématique par série de patchs 
# sur laquelle vous travaillez
git checkout -b topicA
-> (travail)
git commit
-> (travail)
git commit

# générer des fichiers au format mbox
git format-patch -M origin/master
----------
-> Cette commande transforme chaque commit en un message courriel 
-> dont le sujet est la première ligne du message de validation 
-> et le corps contient le reste du message plus le patch correspondant
----------
-> format-patch : affiche les noms de fichiers de patch créés
-> option -M : suivre les renommages. 
----------
-> éditer ces fichiers de patch pour ajouter plus d’informations 
-> à destination de la liste de diffusion mais que vous ne souhaitez pas
-> voir apparaître dans le message de validation

# contenu des fichiers ressemble
cat 0001-Ajout-d-une-limite-la-fonction-de-log.patch

# paramétrer la section imap de votre fichier ~/.gitconfig
[imap]
folder = "[Gmail]/Drafts"
host = imaps://imap.gmail.com
user = utilisateur@gmail.com
pass = x67Nrs,/V:Xt84N
port = 993
sslverify = false

# votre serveur IMAP n’utilise pas SSL
-> host commencera par imap:// au lieu de imaps://

# placer la série de patchs dans le répertoire Drafts du serveur IMAP
cat *.patch | git imap-send

# envoyer les patchs via un serveur SMTP
# paramétrer la section « sendmail » dans votre fichier ~/.gitconfig
[sendemail]
smtpencryption = tls
smtpserver = smtp.gmail.com
smtpuser = user@gmail.com
smtpserverport = 587

# envoyer vos patchs
git send-email *.patch

#================================================
# Git distribué - Maintenance d’un projet 
#================================================

# crée une branche à partir de master de la manière suivante
git branch sc/ruby_client master

# basculer immédiatement dessus
git checkout -b sc/ruby_client master

# appliquer un patch dans une branche thématique
git apply /tmp/patch-ruby-client.patch

# voir si un patch s’applique proprement avant de réellement l’appliquer
git apply --check 0001-seeing-if-this-helps-the-gem.patch

# appliquer un patch généré par format-patch
git am 0001-limit-log-function.patch

# validation générée
git log --pretty=fuller -1

# continuer avec le patch suivant
git am --resolved
----------
git am --continue

#  appliquer des patchs conflictuels
git am -3 0001-seeing-if-this-helps-the-gem.patch

# appliquez des patchs en mode interactif
git am -3 -i mbox

# Jessica vous envoie un courriel indiquant qu’elle a une nouvelle 
# fonctionnalité géniale dans la branche ruby-client de son dépôt, 
# vous pouvez la tester en ajoutant le dépôt distant et en tirant 
# la branche localement
git remote add jessica git://github.com/jessica/monproject.git
git fetch jessica
git checkout -b rubyclient jessica/ruby-client

# réaliser un tirage unique sans sauver l’URL comme référence distante
git pull https://github.com/pourunefois/projet

# Faire une revue de tous les commits
git log contrib --not master
----------
-> option --not : exclure les commits de la branche master
-> équivalent au format : master..contrib

# visualiser un diff complet
git diff master

# ancêtre commun
git merge-base contrib master
----------
36c7dba2c95e6bbb78dfa822519ecfec6e1ca649

# comparer le dernier instantané de la branche thématique avec son 
# ancêtre commun à la branche master le plus récent
git diff 36c7db

# modifications que votre branche thématique a introduites 
# depuis son ancêtre commun avec master
git diff master...contrib

# mode simple de fusion
-> master : contient le code stable
-> branche thématique : fusionnez dans votre branche master puis effacez

# utiliser un cycle de fusion à deux étapes
-> master : mis à jour seulement lors d’une version vraiment stable
-> develop : nouveau code

# quatre branches au long cours
-> master, 
-> next, 
-> pu (proposed updates : propositions) : pour les nouveaux travaux 
-> maint : pour les backports de maintenance

# tirer le commit e43a6 dans votre branche master
git cherry-pick e43a6fd3e94888d76779ad79fb568ed180e5fcdf

# après sélection d’un commit 
-> effacer votre branche thématique 
-> et abandonner les commits que vous n’avez pas tirés dans master

# activer la fonction Rerere
git config --global rerere.enabled true

# signer l’étiquette en tant que mainteneur
git tag -s v1.5 -m 'mon etiquette v1.5 signée'

# publier la clé de votre trousseau 
gpg --list-keys
----------
pub   1024D/F721C45A 2009-02-09 [expires: 2010-02-09]

# importer la clé directement dans la base de données Git
gpg -a --export F721C45A | git hash-object -w --stdin
----------
659ef797d181633c87ec71ac3f9ba29fe5775b92

# créer une étiquette qui pointe votre clé dans Git 
git tag -a maintainer-pgp-pub 659ef797d181633c87ec71ac3f9ba29fe5775b92

# l’étiquette maintainer-pgp-pub sera partagée publiquement
git push --tags

# vérifier une étiquette après import direct de votre clé publique PGP
git show maintainer-pgp-pub | gpg --import

# vérifier vos étiquettes signées
git show <étiquette>

# générer un nom humainement lisible pour chaque commit
git describe master

# créer une archive du dernier instantané de votre code
git archive master --prefix='projet/' | gzip > \
`git describe master`.tar.gz
ls *.tar.gz
----------
v1.6.2-rc1-20-g8c5b85c.tar.gz

# créer une archive au format zip
git archive master --prefix='project/' --format=zip > \
`git describe master`.zip

# obtenir rapidement une sorte de liste des modifications
git shortlog --no-merges master --not v1.0.1

#================================================
# GitHub - Configuration et paramétrage d’un compte
#================================================

# créer un compte utilisateur gratuit. 
-> Allez tout simplement sur https://github.com, 
-> choisissez un nom d’utilisateur 
-> saisissez une adresse électronique 
-> et un mot de passe, 
-> puis cliquez sur « Sign up for GitHub » (S’inscrire sur GitHub).
-> ignorer la page des tarifs
-> GitHub vous envoie un courriel pour vérifier l’adresse fournie

# accéder à votre tableau de bord
-> En cliquant sur le logo Octocat (logo en forme de chat)

# se connecter à des dépôts Git
-> en utilisant le protocole https:// 
-> et de vous identifier au moyen de votre nom d’utilisateur 
-> et de votre mot de passe. 

# le compte que nous venons de créer devient utile
-> pour commencer à dupliquer (fork) un projet 
-> ou pour pousser sur ces dépôts plus tard

# utiliser des serveurs distants en SSH
-> renseigner votre clé publique

# Accès par SSH
-> Accédez aux paramètres de votre compte
-> Sélectionnez ensuite la section « SSH keys » (clés SSH)
-> cliquez sur le bouton « Add an SSH key » (ajouter une clé SSH), 
-> donnez un nom à votre clé, 
-> copiez le contenu du fichier de clé publique (~/.ssh/id_rsa.pub) 
-> et cliquez sur « Add key » (ajouter la clé).

# Votre Avatar
-> Sélectionnez la section « Profile » (profil) 
-> et cliquez sur « Upload new picture » (télécharger une nouvelle image).
-> sélectionner une image sur votre disque dur, 
-> la recadrer.

# Vos adresses électroniques
-> Github utilise les adresses électroniques 
-> pour faire correspondre les commits Git aux utilisateurs

# ajouter toutes les adresses que vous avez utilisées
-> section « Emails » (adresses électroniques)

# réglages de l’authentification à deux facteurs
-> section « Security » (Sécurité)
-> cliquez sur le bouton « Set up two-factor authentication » 
-> choisir d’utiliser une application de téléphone mobile 
-> ou bien de vous faire envoyer un code GitHub par SMS 

#================================================
# GitHub - Contribution à un projet
#================================================

# contribuer à un projet existant 
# sur lequel vous n’avez pas le droit de pousser
-> vous pouvez dupliquer (fork) ce projet. 
-> Cela signifie que GitHub va faire pour vous une copie personnelle
-> vous serez redirigé vers la page de votre nouveau projet

# organisation de la collaboration
-> création d’une branche thématique à partir de la branche master,
-> validation de quelques améliorations (commit),
-> poussée de la branche thématique sur votre projet GitHub (push),
-> ouverture d’une requête de tirage sur GitHub (Pull Request),
-> discussion et éventuellement possibilité de nouvelles validations (commit).
-> Le propriétaire du projet fusionne (merge) ou ferme (close) la requête de tirage.

# problème au projet initial
-> Tony recherche un programme à faire tourner sur son Arduino 
-> et a trouvé un programme GitHub à https://github.com/schacon/blink.
-> Le seul problème est que le clignotement est trop rapide, 
-> nous pensons qu’il serait mieux d’attendre 3 secondes 
-> au lieu d’une seconde entre chaque changement d’état. 
-> Améliorons donc le programme 
-> et soumettons cette amélioration au projet initial.

# Création d’une requête de tirage
-> Premièrement, nous cliquons sur le bouton « Fork » 
-> pour obtenir une copie du projet. 
-> Notre nom d’utilisateur ici est « tonychacon » 
-> notre copie est à https://github.com/tonychacon/blink 
-> et c’est ici que nous pouvons la modifier. 
-> Nous pouvons aussi la cloner localement, 
-> créer une branche thématique, 
-> modifier le code et pousser cette modification sur GitHub.
----------
git clone https://github.com/tonychacon/blink (1)
cd blink
git checkout -b slow-blink (2)
sed -i '' 's/1000/3000/' blink.ino # (MacOSX) (3)
git diff --word-diff (4)
git commit -a -m 'three seconds is better' (5)
git push origin slow-blink (6)
----------
-> Clone notre copie du projet localement
-> Crée un branche thématique avec un nom descriptif
-> Modifie le code
-> Vérifie si la modification est bonne
-> Valide les modifications dans la branche thématique
-> Pousse notre branche thématique sur notre dépôt dupliqué GitHub
----------
-> allons sur notre projet dupliqué sur GitHub, 
-> voir que GitHub a remarqué que nous avons poussé 
-> une nouvelle branche thématique 
-> et affiche un gros bouton vert pour vérifier nos modifications 
-> et ouvrir une requête de tirage sur le projet original.
-> vous rendre à la page « Branches »
-> à https://github.com/<utilisateur>/<projet>/branches 
-> pour trouver votre branche 
-> et ouvrir une requête de tirage à partir de là.





