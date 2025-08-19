#include "ContactModel.h"

ContactModel::ContactModel() {
    qDebug() << Q_FUNC_INFO;
}

ContactModel::~ContactModel()
{
    qDebug() << Q_FUNC_INFO;
    for (Contact* c : std::as_const(m_contactList)) {
        delete c;
    }
    m_contactList.clear();
}

int ContactModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_contactList.size();
}

QVariant ContactModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid() || index.row() >= m_contactList.size())
        return QVariant();

    const Contact* c = m_contactList.at(index.row());

    switch (role) {
    case NAME_ROLE:
        return c->getName();
    case PHONE_ROLE:
        return c->getPhoneNumber();
    case IMAGE_ROLE:
        return c->getImagePath();
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> ContactModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles.insert(NAME_ROLE, "name");
    roles.insert(PHONE_ROLE, "phone");
    roles.insert(IMAGE_ROLE, "imagePath");
    return roles;
}

bool ContactModel::addContact(const QString &name, const QString &phone, const QString &imagePath)
{
    if (name.isEmpty() || phone.isEmpty()) {
        qDebug() << "Name and Phone cannot be empty!";
        return false;
    }

    if (phone.length() < 10) {
        qDebug() << "PhoneNumber must be 10 digits long";
        return false;
    }

    Contact* newContact = new Contact(this);
    newContact->setName(name);
    newContact->setPhoneNumber(phone);
    newContact->setImagePath(imagePath);

    m_contactList.append(newContact);

    qDebug() << "Contact added:" << name << ", total:" << m_contactList.size();
    return true;
}
