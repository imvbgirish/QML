#ifndef STUDENTVIEWMODEL_H
#define STUDENTVIEWMODEL_H

#include <QAbstractListModel>
#include <QObject>
#include "student.h"


class StudentViewModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit StudentViewModel();
    ~StudentViewModel();

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int,QByteArray> roleNames() const;

    enum studentRoles{
        STUDENT_NAME = 1,
        FATHER_NAME,
        EMAIL,
        PHONE_NUMBER,
        PASSWORD,
        CONFIRM_PASSWORD
    };

    Q_INVOKABLE bool addStudentToList(const QString &studentName, const QString &fatherName, const QString &email,
                                      const QString &phoneNumber, const QString &password, const QString &confirmPassword);

    Q_INVOKABLE bool checkLoginData(const QString &phoneNumber, const QString &password);

signals:
    void registrationSuccess();
    void loginSuccess();

private:
    QList<Student*> m_studentList;
};

#endif // STUDENTVIEWMODEL_H
