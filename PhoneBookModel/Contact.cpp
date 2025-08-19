#include "Contact.h"

Contact::Contact(QObject *parent)
    : QObject{parent}
{
    qDebug() << Q_FUNC_INFO;
}

Contact::~Contact()
{
    qDebug() << Q_FUNC_INFO;
}

QString Contact::getName() const
{
    qDebug() << Q_FUNC_INFO;
    return m_name;
}

void Contact::setName(const QString &newName)
{
    qDebug() << Q_FUNC_INFO;
    if (m_name == newName)
        return;
    m_name = newName;
    emit nameChanged();
}

QString Contact::getPhoneNumber() const
{
    qDebug() << Q_FUNC_INFO;
    return m_phoneNumber;
}

void Contact::setPhoneNumber(const QString &newPhoneNumber)
{
    qDebug() << Q_FUNC_INFO;
    if (m_phoneNumber == newPhoneNumber)
        return;
    m_phoneNumber = newPhoneNumber;
    emit phoneNumberChanged();
}

QString Contact::getImagePath() const
{
    qDebug() << Q_FUNC_INFO;
    return m_imagePath;
}

void Contact::setImagePath(const QString &newImagePath)
{
    qDebug() << Q_FUNC_INFO;
    if (m_imagePath == newImagePath)
        return;
    m_imagePath = newImagePath;
    emit imagePathChanged();
}
