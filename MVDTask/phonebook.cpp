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
    qDebug() << Q_FUNC_INFO;

    Q_UNUSED(parent);
    return m_contactList.size();
}

QVariant Phonebook::data(const QModelIndex &index, int role) const
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
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> Phonebook::roleNames() const
{
    qDebug() << Q_FUNC_INFO;

    QHash<int, QByteArray> roles;
    roles.insert(NAME_ROLE, "contactName");
    roles.insert(NUMBER_ROLE, "contactNumber");
    roles.insert(IMAGE_PATH, "contactImage");
    return roles;
}

void Phonebook::createContactData()
{
    qDebug() << Q_FUNC_INFO;

    QList<QStringList> csvData = readDataFromFile(":/data/phonebook.csv");
    for (const QStringList &row : csvData) {
        Contact* c = new Contact;
        c->setContactName(row[0]);
        c->setContactNumber(row[1]);
        c->setContactImage(row[2]);

        insertContactData(c);
    }
}

void Phonebook::addContact(const QString &name, const QString &phone, const QString &imagePath)
{
    qDebug() << Q_FUNC_INFO;

    if(name.isEmpty() || phone.isEmpty()){
        qDebug() << "Fields cannot be empty";
    }

    if(phone.length() < 10){
        qDebug() << "Phone Number must be 10 digits";
    }

    Contact* c = new Contact;
    c->setContactName(name);
    c->setContactNumber(phone);
    c->setContactImage(imagePath);

    insertContactData(c);

    qDebug() << "Contact Added";
}
