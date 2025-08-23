#ifndef CONTACTMODEL_H
#define CONTACTMODEL_H

#include <QObject>
#include <QDebug>
#include <QAbstractListModel>
#include "contact.h"

class ContactModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit ContactModel();
    ~ContactModel();

    enum contactRoles{
        CONTACT_NAME = 1,
        CONTACT_NUMBER
    };

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void addContactToList();

private:
    QList<Contact*> m_contactList;
};

#endif // CONTACTMODEL_H
