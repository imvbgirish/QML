#ifndef CONTACTDATAMODEL_H
#define CONTACTDATAMODEL_H

#include <QObject>
#include <QDebug>
#include <QAbstractListModel>
#include <QFile>
#include "contact.h"

class ContactDataModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit ContactDataModel(QObject *parent = nullptr);
    virtual ~ContactDataModel();

    enum Roles{
        NAME_ROLE = 1,
        NUMBER_ROLE,
        IMAGE_PATH,
        TIME_ROLE,
        MESSAGE_ROLE,
        INCOMING_ROLE,
        OUTGOING_ROLE
    };

    void insertContactData(Contact* contact);
    Contact* getContactData(int index) const;
    virtual void createContactData() = 0;

protected:
    QList<Contact*> m_contactList;
    QList<QStringList> readDataFromFile(const QString &path) const;
};

#endif // CONTACTDATAMODEL_H
