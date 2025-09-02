#include "phonebook.h"

Phonebook::Phonebook() {
    qDebug() << Q_FUNC_INFO;
}

Phonebook::~Phonebook()
{
    qDebug() << Q_FUNC_INFO;
}

int Phonebook::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_contactList.size();
}

QVariant Phonebook::data(const QModelIndex &index, int role) const
{
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
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> Phonebook::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles.insert(NAME_ROLE, "contactName");
    roles.insert(NUMBER_ROLE, "contactNumber");
    roles.insert(IMAGE_PATH, "contactImage");
    return roles;
}

void Phonebook::createContactData()
{
    QList<QStringList> csvData = readDataFromFile(":/data/personInfo.csv");
    for (const QStringList &row : csvData) {
        Contact* c = new Contact;
        c->setContactName(row[0]);
        c->setContactNumber(row[1]);
        c->setContactImage(row[2]);

        insertContactData(c);
    }
}
