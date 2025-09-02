#include "callhistory.h"

CallHistory::CallHistory() {
    qDebug() << Q_FUNC_INFO;
}

CallHistory::~CallHistory()
{
    qDebug() << Q_FUNC_INFO;
}

int CallHistory::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_contactList.size();
}

QVariant CallHistory::data(const QModelIndex &index, int role) const
{
    qDebug() << Q_FUNC_INFO;

    if(!index.isValid() || index.row()<0 || index.row() >= m_contactList.size())
        return QVariant();

    const Contact* c = m_contactList.at(index.row());

    switch(role){
    case NAME_ROLE:
        return c->getContactName();
    case NUMBER_ROLE:
        return c->getContactNumber();
    case IMAGE_PATH:
        return c->getContactImage();
    case TIME_ROLE:
        return c->getContactedTime();
    case INCOMING_ROLE:
        return c->getIncoming();
    case OUTGOING_ROLE:
        return c->getOutgoing();
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> CallHistory::roleNames() const
{
    qDebug() << Q_FUNC_INFO;

    QHash<int, QByteArray> roles;
    roles.insert(NAME_ROLE, "contactName");
    roles.insert(NUMBER_ROLE, "contactNumber");
    roles.insert(IMAGE_PATH, "contactImage");
    roles.insert(TIME_ROLE, "contactedTime");
    roles.insert(INCOMING_ROLE, "incoming");
    roles.insert(OUTGOING_ROLE, "outgoing");
    return roles;
}

void CallHistory::createContactData()
{
    qDebug() << Q_FUNC_INFO;

    QList<QStringList> csvData = readDataFromFile(":/data/personInfo.csv");
    for (const QStringList &row : csvData) {
        Contact* c = new Contact;
        c->setContactName(row[0]);
        c->setContactNumber(row[1]);
        c->setContactImage(row[2]);
        c->setContactedTime(row[3]);
        c->setIncoming(row[5].toInt() == 0);
        c->setOutgoing(row[6].toInt() == 0);

        insertContactData(c);
    }
}
