#================================================
# Qt - QSqlDatabase
#================================================

# create and open a default connection to a PostgreSQL database
QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
db.setHostName("acidalia");
db.setDatabaseName("customdb");
db.setUserName("mojito");
db.setPassword("J0a1m8");
bool ok = db.open();

# set the connection parameters
-> setDatabaseName(), 
-> setUserName(), 
-> setPassword(), 
-> setHostName(), 
-> setPort(), 
-> setConnectOptions()

# activate the physical connection to the database
-> open()

# get the default connection
QSqlDatabase db = QSqlDatabase::database();

# create an independent database connection based on an existing one
-> cloneDatabase()

# create multiple database connections
-> specify a unique connection name for each one, 
-> when you call addDatabase(). 
-> Use database() with a connection name 
-> to get that connection.

# get the list of tables in the database, 
-> tables()

# get a table's primary index, 
-> primaryIndex()

# get meta-information about a table's fields (e.g., field names).
-> record()

# start a transaction, 
-> transaction()

# complete a transaction, 
-> commit() or rollback()

# ask if the driver supports transactions.
-> hasFeature()

# using transactions, 
-> you must start the transaction 
-> before you create your query.

# return information last error
-> lastError()

# Get the names of the available SQL drivers 
-> drivers(). 

# Check for the presence of a particular driver 
-> isDriverAvailable(). 

# register your own custom driver 
-> registerSqlDriver().

# Threads and the SQL Module
-> A connection can only be used from within the thread that created it. 
-> Moving connections between threads or creating queries 
-> from a different thread is not supported.

# enable Qt SQL in a project, 
-> add this directive into the C++ files:
-> \ #include <QtSql>

# link against the Qt SQL module, 
-> add this line to the project file:
-> QT += sql

#================================================
# Qt - QSqlQuery
#================================================

# set the query's state to active
-> isActive()
-> returns true

# active query must be navigated to a valid record
-> isValid() 
-> returns true

# Navigating records
-> next() -> move forward record
-> previous() -> move backward record
-> first() -> move first record
-> last() -> move last record
-> seek() -> move arbitrarily record

#  retrieved data 
-> value()
-> All data is transferred from the SQL backend using QVariants

# access the data returned by a query
QSqlQuery query("SELECT country FROM artist");
while (query.next()) {
    QString country = query.value(0).toString();
    doSomething(country);
}

# convert a field name into an index
QSqlQuery query("SELECT * FROM artist");
int fieldNo = query.record().indexOf("country");
while (query.next()) {
    QString country = query.value(fieldNo).toString();
    doSomething(country);
}

# find out how many rows were affected by a non-SELECT query, 
-> numRowsAffected()

# find how many were retrieved by a SELECT.
-> size()

# retrieve the values of all the fields in a single variable (a map) 
-> boundValues()

# Named binding using named placeholders:
QSqlQuery query;
query.prepare("INSERT INTO person (id, forename, surname) "
              "VALUES (:id, :forename, :surname)");
query.bindValue(":id", 1001);
query.bindValue(":forename", "Bart");
query.bindValue(":surname", "Simpson");
query.exec();

# Positional binding using named placeholders:
QSqlQuery query;
query.prepare("INSERT INTO person (id, forename, surname) "
              "VALUES (:id, :forename, :surname)");
query.bindValue(0, 1001);
query.bindValue(1, "Bart");
query.bindValue(2, "Simpson");
query.exec();
    
# Binding values using positional placeholders (version 2):
QSqlQuery query;
query.prepare("INSERT INTO person (id, forename, surname) "
              "VALUES (?, ?, ?)");
query.addBindValue(1001);
query.addBindValue("Bart");
query.addBindValue("Simpson");
query.exec();    

# Binding values to a stored procedure:
QSqlQuery query;
query.prepare("CALL AsciiToInt(?, ?)");
query.bindValue(0, "A");
query.bindValue(1, 0, QSql::Out);
query.exec();
int i = query.boundValue(1).toInt(); // i is 65

# before a QSqlQuery is created
-> load the SQL driver
-> open the connection

#================================================
# Qt - QSqlDriver
#================================================

# create your own SQL drivers, 
-> subclass this class 
-> and reimplement its pure virtual functions

# How to Write Your Own Database Driver
-> QSqlDatabase is responsible for loading and managing database driver plugins. 
-> QSqlDriver is responsible for connecting to a database, establish the proper environment,
-> QSqlResult is responsible for sending queries to the database, returning result data, 
-> QSqlQuery forwards many of its function calls directly to QSqlResult which provides the concrete implementation.

# code can be used as a skeleton for a SQL driver:
class XyzResult : public QSqlResult
{
public:
    XyzResult(const QSqlDriver *driver)
        : QSqlResult(driver) {}
    ~XyzResult() {}

protected:
    QVariant data(int /* index */) { return QVariant(); }
    bool isNull(int /* index */) { return false; }
    bool reset(const QString & /* query */) { return false; }
    bool fetch(int /* index */) { return false; }
    bool fetchFirst() { return false; }
    bool fetchLast() { return false; }
    int size() { return 0; }
    int numRowsAffected() { return 0; }
    QSqlRecord record() const { return QSqlRecord(); }
};

class XyzDriver : public QSqlDriver
{
public:
    XyzDriver() {}
    ~XyzDriver() {}

    bool hasFeature(DriverFeature /* feature */) const { return false; }
    bool open(const QString & /* db */, const QString & /* user */,
              const QString & /* password */, const QString & /* host */,
              int /* port */, const QString & /* options */)
        { return false; }
    void close() {}
    QSqlResult *createResult() const { return new XyzResult(this); }
};

#================================================
# Qt - QSqlQueryModel
#================================================

# provide data to view classes such as QTableView
QSqlQueryModel *model = new QSqlQueryModel;
model->setQuery("SELECT name, salary FROM employee");
model->setHeaderData(0, Qt::Horizontal, tr("Name"));
model->setHeaderData(1, Qt::Horizontal, tr("Salary"));

QTableView *view = new QTableView;
view->setModel(model);
view->show();    

# access a database programmatically
QSqlQueryModel model;
model.setQuery("SELECT * FROM employee");
int salary = model.record(4).value("salary").toInt();

# Assuming that salary is column 2
int salary = model.data(model.index(4, 2)).toInt();

# make it read-write
-> subclass it and reimplement setData() and flags()

#================================================
# Qt - QSqlTableModel
#================================================

# provide data to view classes such as QTableView
QSqlTableModel *model = new QSqlTableModel(parentObject, database);
model->setTable("employee");
model->setEditStrategy(QSqlTableModel::OnManualSubmit);
model->select();
model->setHeaderData(0, Qt::Horizontal, tr("Name"));
model->setHeaderData(1, Qt::Horizontal, tr("Salary"));

QTableView *view = new QTableView;
view->setModel(model);
view->hideColumn(0); // don\'t show the ID
view->show();

#================================================
# Qt - QSqlRelationalTableModel
#================================================

# how the QSqlRelationalTableModel was set up
model->setTable("employee");

model->setRelation(2, QSqlRelation("city", "id", "name"));
model->setRelation(3, QSqlRelation("country", "id", "name"));
----------
-> setRelation() : establish a relationship between two tables. 
-> (1) : (column 2) in (table employee) maps with (id) of (table city) we show (city\'s name)
-> (2) : (column 3) in (table employee) maps with (id) of (table country) we show (country\'s name)

# read-write QSqlRelationalTableModel
QTableView *view = new QTableView;
view->setModel(model);
view->setItemDelegate(new QSqlRelationalDelegate(view));
