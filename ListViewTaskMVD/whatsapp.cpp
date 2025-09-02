#include "whatsapp.h"

Whatsapp::Whatsapp() {
    qDebug() << Q_FUNC_INFO;
}

Whatsapp::~Whatsapp()
{
    qDebug() << Q_FUNC_INFO;
}

int Whatsapp::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_contactList.size();
}

QVariant Whatsapp::data(const QModelIndex &index, int role) const
{
    qDebug() << Q_FUNC_INFO;

    if(!index.isValid() || index.row()<0 || index.row() >= m_contactList.size())
        return QVariant();

    const Contact* c = m_contactList.at(index.row());

    switch(role){
    case NAME_ROLE:
        return c->getContactName();
    case MESSAGE_ROLE:
        return c->getLastMessage();
    case TIME_ROLE:
        return c->getContactedTime();
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> Whatsapp::roleNames() const
{
    qDebug() << Q_FUNC_INFO;

    QHash<int, QByteArray> roles;
    roles.insert(NAME_ROLE, "contactName");
    roles.insert(MESSAGE_ROLE, "lastMessage");
    roles.insert(TIME_ROLE,"contactedTime");
    return roles;
}

void Whatsapp::createContactData()
{
    qDebug() << Q_FUNC_INFO;

    QList<QStringList> csvData = readDataFromFile(":/data/personInfo.csv");
    for (const QStringList &row : csvData) {
        Contact* c = new Contact;
        c->setContactName(row[0]);
        c->setContactImage(row[2]);
        c->setContactedTime(row[3]);
        c->setLastMessage(row[4]);

        insertContactData(c);
    }
}
