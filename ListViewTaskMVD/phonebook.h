#ifndef PHONEBOOK_H
#define PHONEBOOK_H

#include <QObject>
#include <QDebug>
#include "contactdatamodel.h"

class Phonebook : public ContactDataModel
{
    Q_OBJECT
public:
    Phonebook();
    ~Phonebook();

    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    void createContactData() override;
};

#endif // PHONEBOOK_H
