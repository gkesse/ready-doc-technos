#================================================
# Qt - Database
#================================================

#------------------------------------------------
# QSqlDatabase

# obtenir la liste des drivers
QSqlDatabase::drivers().contains("QSQLITE")
# ajouter une connexion
QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
# définir le nom
db.setDatabaseName(":memory:")
# ouvrir une connexion
db.open()
# obtenir la dernière erreur
db.lastError()
# obtenir la liste des tables
db.tables()

#------------------------------------------------
# QSqlQuery

# exécuter une requête SQL
q.exec(QLatin1String("create table books(id integer primary key, title varchar, author integer, genre integer, year integer, rating integer)")
# obtenir la dernière erreur
q.lastError()
# préparer une requête SQL
q.prepare(QLatin1String("insert into authors(name, birthdate) values(?, ?)")))
# ajouter une valeur pour la liaison
q.addBindValue(title);
# exécuter la requête
q.exec();
# obtenir l'id de la dernière insertion
q.lastInsertId();

#------------------------------------------------
# QSqlRelationalTableModel

model = new QSqlRelationalTableModel(ui.bookTable);
# définir la stratégie d'édition
model->setEditStrategy(QSqlTableModel::OnManualSubmit);
# définir la table
model->setTable("books");
# définir l'index du champ
model->fieldIndex("author");
# définir la relation entre l'index et les colonnes
model->setRelation(authorIdx, QSqlRelation("authors", "id", "name"));
# définir l'entête
model->setHeaderData(authorIdx, Qt::Horizontal, tr("Author Name"));
# remplace le modéle avec les données de la table
model->select()
# obtenir la dernière erreur
model->lastError()

#------------------------------------------------
# QTableView

model = new QSqlRelationalTableModel(ui.bookTable);
# définir le modèle
ui.bookTable->setModel(model);
# définir le délégué
ui.bookTable->setItemDelegate(new BookDelegate(ui.bookTable));
# définir la colonne invisible
ui.bookTable->setColumnHidden(model->fieldIndex("id"), true);
# définir le modèle de sélection
ui.bookTable->setSelectionMode(QAbstractItemView::SingleSelection);
# obtenir le modèle de sélection
ui.bookTable->selectionModel()

#------------------------------------------------
# QComboBox

# initialiser le modèle
ui.authorEdit->setModel(model->relationModel(authorIdx));
# indiquer la colonne visible du modèle
ui.authorEdit->setModelColumn(model->relationModel(authorIdx)->fieldIndex("name"));

#------------------------------------------------
# QDataWidgetMapper

QDataWidgetMapper *mapper = new QDataWidgetMapper(this);
# initialiser le modèle
mapper->setModel(model);
# initialiser le délégué
mapper->setItemDelegate(new BookDelegate(this));
# ajouter un mapping entre une colonne du modèle 
mapper->addMapping(ui.titleEdit, model->fieldIndex("title"));
# créer une connexion 
connect(ui.bookTable->selectionModel(), 
SIGNAL(currentRowChanged(QModelIndex,QModelIndex)),
mapper, SLOT(setCurrentModelIndex(QModelIndex)));













