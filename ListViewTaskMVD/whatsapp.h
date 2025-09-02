#ifndef WHATSAPP_H
#define WHATSAPP_H

#include <QObject>
#include <QDebug>
#include "contactdatamodel.h"

class Whatsapp : public ContactDataModel
{
    Q_OBJECT
public:
    Whatsapp();
    ~Whatsapp();

    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    void createContactData() override;
};

#endif // WHATSAPP_H
