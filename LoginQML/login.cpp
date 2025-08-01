#include "login.h"

Login::Login(QObject *parent)
    : QObject{parent}
{
    qDebug() << Q_FUNC_INFO;
    connect(this,&Login::usernameChanged,this,&Login::onUserNameChanged);
    connect(this,&Login::passwordChanged,this,&Login::onPasswordChanged);
}

QString Login::getUsername() const
{
    qDebug() << Q_FUNC_INFO;
    return m_username;
}

void Login::setUsername(const QString &newUsername)
{
    qDebug() << Q_FUNC_INFO;

    if (m_username == newUsername)
        return;
    m_username = newUsername;
    emit usernameChanged();
}

QString Login::getPassword() const
{
    qDebug() << Q_FUNC_INFO;
    return m_password;
}

void Login::setPassword(const QString &newPassword)
{
    qDebug() << Q_FUNC_INFO;

    if (m_password == newPassword)
        return;
    m_password = newPassword;
    emit passwordChanged();
}

void Login::onUserNameChanged()
{
    qDebug() << Q_FUNC_INFO << "Username: " << m_username;

}

void Login::onPasswordChanged()
{
    qDebug() << Q_FUNC_INFO << "Password: " << m_password;

}
