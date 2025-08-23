#include "contactmodel.h"

ContactModel::ContactModel()
{
    m_contactList.push_back(new Contact("Rahul Sharma", "9876543210"));
    m_contactList.push_back(new Contact("Priya Mehta", "9876501234"));
    m_contactList.push_back(new Contact("Amit Verma", "9812345678"));
    m_contactList.push_back(new Contact("Sneha Kapoor", "9123456789"));
    m_contactList.push_back(new Contact("Vikram Singh", "9098765432"));
}

ContactModel::~ContactModel()
{
    for(Contact* c: std::as_const(m_contactList)){
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
    const Contact* contact = m_contactList.at(index.row());

    switch(role){
    case CONTACT_NAME:
        return contact->getContactName();
    case CONTACT_NUMBER:
        return contact->getContactNumber();
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> ContactModel::roleNames() const
{
    QHash<int, QByteArray> contactRoles;
    contactRoles.insert(CONTACT_NAME, "contactName");
    contactRoles.insert(CONTACT_NUMBER, "contactNumber");
    return contactRoles;
}

void ContactModel::addContactToList()
{
    beginResetModel(); //bcoz this class is inherited from QAbstractItemClass
    m_contactList.push_back(new Contact("Siddharth Rao", "9876001122"));
    m_contactList.push_back(new Contact("Pooja Iyer", "9865321478"));
    m_contactList.push_back(new Contact("Karthik Menon", "9890456123"));
    m_contactList.push_back(new Contact("Divya Patel", "9811765432"));
    endResetModel();
    qDebug() << "ADD Button clicked";
}
