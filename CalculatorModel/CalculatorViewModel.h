#ifndef CALCULATORVIEWMODEL_H
#define CALCULATORVIEWMODEL_H

#include <QAbstractListModel>
#include <QDebug>
#include <QObject>
#include <QJSValue>
#include <QJSEngine>
#include <QRegularExpression>

class CalculatorViewModel : public QAbstractListModel
{
    Q_OBJECT
public:
    CalculatorViewModel();
    ~CalculatorViewModel();

    enum ButtonRoles{
        LabelRole = Qt::UserRole + 1
    };

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE QString calculateInputData(const QString &currentExpr, const QString &input);

private:
    QStringList m_buttons;
    QString evaluateExpression(const QString &expr);
};

#endif // CALCULATORVIEWMODEL_H
