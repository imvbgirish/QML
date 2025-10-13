#include "student.h"

Student::Student(QObject *parent)
    : QObject{parent}
{}


Student::~Student()
{

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

