#================================================
# Qt - JSON
#================================================

# QStringLiteral
QStringLiteral("save.json")

# QFile
QFile loadFile(saveFormat == Json
? QStringLiteral("save.json")
: QStringLiteral("save.dat"));
loadFile.open(QIODevice::ReadOnly)
saveFile.write(saveFormat == Json
? saveDoc.toJson()
: saveDoc.toBinaryData());

# QByteArray
QByteArray saveData = loadFile.readAll();

# QJsonDocument
QJsonDocument saveDoc(gameObject);
saveDoc.toJson()
saveDoc.toBinaryData()

QJsonDocument loadDoc(saveFormat == Json
? QJsonDocument::fromJson(saveData)
: QJsonDocument::fromBinaryData(saveData));
loadDoc.object()

# QJsonObject
json["player"].toObject()
json["levels"].toArray()
json["name"].toString()
json["level"].toDouble()
json["name"] = mName;

# QJsonArray
levelArray.size()
levelArray[levelIndex].toObject()
levelArray.append(levelObject);



