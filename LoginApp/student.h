#ifndef STUDENT_H
#define STUDENT_H

#include <QObject>
#include <QDebug>
#include <QRegularExpression>

class Student : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString studentName READ getStudentName WRITE setStudentName NOTIFY studentNameChanged FINAL)
    Q_PROPERTY(QString fatherName READ getFatherName WRITE setFatherName NOTIFY fatherNameChanged FINAL)
    Q_PROPERTY(QString email READ getEmail WRITE setEmail NOTIFY emailChanged FINAL)
    Q_PROPERTY(QString phoneNumber READ getPhoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged FINAL)
    Q_PROPERTY(QString password READ getPassword WRITE setPassword NOTIFY passwordChanged FINAL)
    Q_PROPERTY(QString confirmPassword READ getConfirmPassword WRITE setConfirmPassword NOTIFY confirmPasswordChanged FINAL)

public:
    explicit Student(QObject *parent = nullptr);
    ~Student();

    QString getStudentName() const;
    void setStudentName(const QString &newStudentName);

    QString getFatherName() const;
    void setFatherName(const QString &newFatherName);

    QString getEmail() const;
    void setEmail(const QString &newEmail);

    QString getPhoneNumber() const;
    void setPhoneNumber(const QString &newPhoneNumber);

    QString getPassword() const;
    void setPassword(const QString &newPassword);

    QString getConfirmPassword() const;
    void setConfirmPassword(const QString &newConfirmPassword);

signals:
    void studentNameChanged();
    void fatherNameChanged();
    void emailChanged();
    void phoneNumberChanged();
    void passwordChanged();
    void confirmPasswordChanged();

private:
    QString m_studentName;
    QString m_fatherName;
    QString m_email;
    QString m_phoneNumber;
    QString m_password;
    QString m_confirmPassword;
};

#endif // STUDENT_H
