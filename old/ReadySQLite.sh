#================================================
__________Windows__________(){}
#================================================
GSQLite_ouvrir_bdd(){}
#================================================
set GDB_NAME=C:\Users\Admin\Downloads\Programs\ReadyShop\Accueil\test.dat
sqlite3 %GDB_NAME%
#================================================
GSQLite_executer_requete_ligne_commande(){}
#================================================
set GDB_NAME=C:\Users\Admin\Downloads\Programs\ReadyShop\Accueil\test.dat
set GTABLE_NAME=test
sqlite3 %GDB_NAME% "
.headers on
.mode csv
.output out.csv
select * from %GTABLE_NAME%
"
#================================================
GSQLite_operations_communes(){}
#================================================
.tables
.help
.headers on
.mode column
.width 0 30
#================================================
GSQLite_creer_table_news(){}
#================================================
create table news (
    id integer primary key autoincrement not null,
    iTitle varchar(256),
    iCreate datetime default(datetime('now', 'localtime')),
    iDate date,
    iStart time,
    iEnd time,
    iPlace varchar(256)
);
#================================================
GSQLite_supprimer_table_news(){}
#================================================
drop table news;
#================================================
GSQLite_inserer_donnees_table_news(){}
#================================================
insert into news (iTitle, iPlace)
values ("Réunion des apôtres", "Chez la soeur Sabine, 4 Allée du Vercors 94800 Villejuif");
insert into news (iTitle)
values ("Conseil de l'église");
insert into news (iTitle)
values ("Répétition de la chorale");
#================================================
GSQLite_afficher_donnees_table_news(){}
#================================================
select * from news;
#================================================
__________UNIX__________(){}
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
#================================================
__________notes_et_references__________(){}
#================================================
