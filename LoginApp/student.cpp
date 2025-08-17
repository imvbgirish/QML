#include "student.h"

Student::Student(QObject *parent)
    : QObject{parent}
{
    qDebug() << Q_FUNC_INFO;
}

Student::~Student()
{
    qDebug() << Q_FUNC_INFO;
}

QString Student::getStudentName() const
{
    return m_studentName;
}

void Student::setStudentName(const QString &newStudentName)
{
    if (m_studentName == newStudentName)
        return;
    m_studentName = newStudentName;
    emit studentNameChanged();
}

QString Student::getFatherName() const
{
    return m_fatherName;
}

void Student::setFatherName(const QString &newFatherName)
{
    if (m_fatherName == newFatherName)
        return;
    m_fatherName = newFatherName;
    emit fatherNameChanged();
}

QString Student::getEmail() const
{
    return m_email;
}

void Student::setEmail(const QString &newEmail)
{
    if (m_email == newEmail)
        return;
    m_email = newEmail;
    emit emailChanged();
}

QString Student::getPhoneNumber() const
{
    return m_phoneNumber;
}

void Student::setPhoneNumber(const QString &newPhoneNumber)
{
    if (m_phoneNumber == newPhoneNumber)
        return;
    m_phoneNumber = newPhoneNumber;
    emit phoneNumberChanged();
}

QString Student::getPassword() const
{
    return m_password;
}

void Student::setPassword(const QString &newPassword)
{
    if (m_password == newPassword)
        return;
    m_password = newPassword;
    emit passwordChanged();
}

QString Student::getConfirmPassword() const
{
    return m_confirmPassword;
}

void Student::setConfirmPassword(const QString &newConfirmPassword)
{
    if (m_confirmPassword == newConfirmPassword)
        return;
    m_confirmPassword = newConfirmPassword;
    emit confirmPasswordChanged();
}
