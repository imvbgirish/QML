#include "contactdatamodel.h"

ContactDataModel::ContactDataModel(QObject *parent)
{
    qDebug() << Q_FUNC_INFO;
}

ContactDataModel::~ContactDataModel()
{
    qDebug() << Q_FUNC_INFO;

    for(Contact* c: std::as_const(m_contactList)){
        delete c;
    }
    m_contactList.clear();
}

void ContactDataModel::insertContactData(Contact *contact)
{
    qDebug() << Q_FUNC_INFO;

    if(!contact)
        return;

    m_contactList.append(contact);
}

Contact *ContactDataModel::getContactData(int index) const
{
    qDebug() << Q_FUNC_INFO;

    if(index < 0 || index > m_contactList.size())
        return nullptr;

    return m_contactList.at(index);
}

QList<QStringList> ContactDataModel::readDataFromFile(const QString &path) const
{
    QList<QStringList> dataList;
    QFile file(path);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Cannot open file:" << path;
        return dataList;
    }

    QTextStream in(&file);
    while (!in.atEnd()) {
        QString line = in.readLine().trimmed();
        if (!line.isEmpty()) {
            QStringList row = line.split(",");
            dataList.append(row);
        }
    }

    file.close();
    return dataList;
}
