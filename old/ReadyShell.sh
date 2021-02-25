#================================================
# Shell | CentOs
#================================================
GShell_chercher_fichier(){}
#================================================
GFILE_ROOT=/
GSEARCH_PATTERN="crontab"
find "$GFILE_ROOT" -iname "*$GSEARCH_PATTERN*" -type f | grep --color=auto '^\|[^/]*$'
#================================================
GShell_ajouter_tache_crontab(){}
#================================================
GMINUTE=55
GHOUR=
GDAY=
GMONTH=
GWEEKDAY=
GUSERNAME=
GCOMMAND=
if [ "$GMINUTE" = "" ];then GMINUTE="0";fi;if [ "$GHOUR" = "" ];then GHOUR="0";fi;if [ "$GDAY" = "" ];then GDAY="*";fi;if [ "$GMONTH" = "" ];then GMONTH="*";fi;if [ "$GWEEKDAY" = "" ];then GWEEKDAY="*";fi;if [ "$GUSERNAME" = "" ];then GUSERNAME="";fi;if [ "$GCOMMAND" = "" ];then GCOMMAND="echo \"Bonjour tout le monde\" > /opt/README.txt";fi;
echo "$GMINUTE $GHOUR $GDAY $GMONTH $GWEEKDAY $GUSERNAME $GCOMMAND"
#================================================
GShell_lister_taches_crontab(){}
#================================================
crontab -l
#================================================
GShell_editer_tache_crontab(){}
#================================================
crontab -e
#================================================
GShell_recharger_config_crontab(){}
#================================================
GSERVICE=cron
service $GSERVICE reload
#================================================
GShell_notes_et_references(){}
#================================================
http://tldp.org/LDP/abs/html/special-chars.html
