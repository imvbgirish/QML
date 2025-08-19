#ifndef CONTACTMODEL_H
#define CONTACTMODEL_H

#include "Contact.h"
#include <QAbstractListModel>
#include <QDebug>
#include <QObject>

class ContactModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit ContactModel();
    ~ContactModel();

    enum ContactRoles {
        NAME_ROLE = Qt::UserRole + 1,
        PHONE_ROLE,
        IMAGE_ROLE
    };

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE bool addContact(const QString &name, const QString &phone, const QString &imagePath);

signals:
    void contactAdded();

private:
    QList<Contact*> m_contactList;
};

#endif // CONTACTMODEL_H
