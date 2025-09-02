#ifndef CONTACT_H
#define CONTACT_H

#include <QObject>
#include <QDebug>

class Contact : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString contactName READ getContactName WRITE setContactName NOTIFY contactNameChanged FINAL)
    Q_PROPERTY(QString contactNumber READ getContactNumber WRITE setContactNumber NOTIFY contactNumberChanged FINAL)
    Q_PROPERTY(QString contactImage READ getContactImage WRITE setContactImage NOTIFY contactImageChanged FINAL)
    Q_PROPERTY(QString contactedTime READ getContactedTime WRITE setContactedTime NOTIFY contactedTimeChanged FINAL)
    Q_PROPERTY(QString lastMessage READ getLastMessage WRITE setLastMessage NOTIFY lastMessageChanged FINAL)
    Q_PROPERTY(bool incoming READ getIncoming WRITE setIncoming NOTIFY incomingChanged FINAL)
    Q_PROPERTY(bool outgoing READ getOutgoing WRITE setOutgoing NOTIFY outgoingChanged FINAL)

public:
    explicit Contact(QObject *parent = nullptr);
    Contact(const QString &name, const QString &number, const QString &imagePath, const QString &contactedTime, const QString &lastMessage, const bool &incoming, const bool &outgoing);
    ~Contact();

    QString getContactName() const;
    void setContactName(const QString &newContactName);

    QString getContactNumber() const;
    void setContactNumber(const QString &newContactNumber);

    QString getContactImage() const;
    void setContactImage(const QString &newContactImage);

    QString getContactedTime() const;
    void setContactedTime(const QString &newContactedTime);

    QString getLastMessage() const;
    void setLastMessage(const QString &newLastMessage);

    bool getIncoming() const;
    void setIncoming(bool newIncoming);

    bool getOutgoing() const;
    void setOutgoing(bool newOutgoing);


signals:
    void contactNameChanged();
    void contactNumberChanged();
    void contactImageChanged();
    void contactedTimeChanged();
    void incomingChanged();
    void outgoingChanged();
    void lastMessageChanged();

private:
    QString m_contactName;
    QString m_contactNumber;
    QString m_contactImage;
    QString m_contactedTime;
    QString m_lastMessage;
    bool m_incoming = false;
    bool m_outgoing = false;
};

#endif // CONTACT_H
