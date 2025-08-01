#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>
#include <QDebug>

class Login : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString username READ getUsername WRITE setUsername NOTIFY usernameChanged FINAL)
    Q_PROPERTY(QString password READ getPassword WRITE setPassword NOTIFY passwordChanged FINAL)

public:
    explicit Login(QObject *parent = nullptr);

    QString getUsername() const;
    void setUsername(const QString &newUsername);

    QString getPassword() const;
    void setPassword(const QString &newPassword);

public slots:
    void onUserNameChanged();
    void onPasswordChanged();

signals:
    void usernameChanged();
    void passwordChanged();

private:
    QString m_username;
    QString m_password;
};

#endif // LOGIN_H
