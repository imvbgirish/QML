#ifndef CALLHISTORY_H
#define CALLHISTORY_H

#include <QObject>
#include <QDebug>
#include "contactdatamodel.h"

class CallHistory : public ContactDataModel
{
    Q_OBJECT
public:
    CallHistory();
    ~CallHistory();

    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    void createContactData() override;
};

#endif // CALLHISTORY_H
