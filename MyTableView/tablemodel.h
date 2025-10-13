#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <QObject>
#include <QQmlEngine>
#include <QAbstractTableModel>
#include <QDebug>
#include "student.h"

class TableModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    TableModel();
    ~TableModel();

    enum Roles{
        NAME = Qt::UserRole + 1,
        PHONE_NUMBER,
        EMAIL
    };

    // QAbstractItemModel interface
public:
    int rowCount(const QModelIndex &parent) const override;
    int columnCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

private:
    QList<Student*> m_studentList;
};

#endif // TABLEMODEL_H
