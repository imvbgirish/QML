#ifndef STUDENT_H
#define STUDENT_H

#include <QObject>

class Student : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString studentName READ getStudentName WRITE setStudentName NOTIFY studentNameChanged FINAL)
    Q_PROPERTY(QString phoneNumber READ getPhoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged FINAL)
    Q_PROPERTY(QString email READ getEmail WRITE setEmail NOTIFY emailChanged FINAL)
public:
    explicit Student(QObject *parent = nullptr);
    ~Student();

    QString getStudentName() const;
    void setStudentName(const QString &newStudentName);

    QString getPhoneNumber() const;
    void setPhoneNumber(const QString &newPhoneNumber);

    QString getEmail() const;
    void setEmail(const QString &newEmail);

signals:
    void studentNameChanged();
    void phoneNumberChanged();
    void emailChanged();

private:
    QString m_studentName;
    QString m_phoneNumber;
    QString m_email;
};

#endif // STUDENT_H
