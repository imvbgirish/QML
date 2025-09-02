#include "contact.h"

Contact::Contact(QObject *parent)
    : QObject{parent}
{
    qDebug() << Q_FUNC_INFO;
}

Contact::Contact(const QString &name, const QString &number, const QString &imagePath, const QString &contactedTime,
                 const QString &lastMessage,const bool &incoming, const bool &outgoing)
{
    qDebug() << Q_FUNC_INFO;

    m_contactName = name;
    m_contactNumber = number;
    m_contactImage = imagePath;
    m_contactedTime = contactedTime;
    m_lastMessage = lastMessage;
    m_incoming = incoming;
    m_outgoing = outgoing;
}

Contact::~Contact(){
    qDebug() << Q_FUNC_INFO;
}

QString Contact::getContactName() const{
    qDebug() << Q_FUNC_INFO;
    return m_contactName;
}

void Contact::setContactName(const QString &newContactName)
{
    qDebug() << Q_FUNC_INFO;
    if(m_contactName == newContactName)
        return;
    m_contactName = newContactName;
    emit contactNameChanged();
}

QString Contact::getContactNumber() const
{
    qDebug() << Q_FUNC_INFO;
    return m_contactNumber;
}

void Contact::setContactNumber(const QString &newContactNumber)
{
    qDebug() << Q_FUNC_INFO;
    if (m_contactNumber == newContactNumber)
        return;
    m_contactNumber = newContactNumber;
    emit contactNumberChanged();
}

bool Contact::getIncoming() const
{
    qDebug() << Q_FUNC_INFO;
    return m_incoming;
}

void Contact::setIncoming(bool newIncoming)
{
    qDebug() << Q_FUNC_INFO;
    if (m_incoming == newIncoming)
        return;
    m_incoming = newIncoming;
    emit incomingChanged();
}

bool Contact::getOutgoing() const
{
    qDebug() << Q_FUNC_INFO;
    return m_outgoing;
}

void Contact::setOutgoing(bool newOutgoing)
{
    qDebug() << Q_FUNC_INFO;
    if (m_outgoing == newOutgoing)
        return;
    m_outgoing = newOutgoing;
    emit outgoingChanged();
}

QString Contact::getLastMessage() const
{
    qDebug() << Q_FUNC_INFO;
    return m_lastMessage;
}

void Contact::setLastMessage(const QString &newLastMessage)
{
    qDebug() << Q_FUNC_INFO;
    if (m_lastMessage == newLastMessage)
        return;
    m_lastMessage = newLastMessage;
    emit lastMessageChanged();
}

QString Contact::getContactImage() const
{
    qDebug() << Q_FUNC_INFO;
    return m_contactImage;
}

void Contact::setContactImage(const QString &newContactImage)
{
    qDebug() << Q_FUNC_INFO;
    if (m_contactImage == newContactImage)
        return;
    m_contactImage = newContactImage;
    emit contactImageChanged();
}

QString Contact::getContactedTime() const
{
    qDebug() << Q_FUNC_INFO;
    return m_contactedTime;
}

void Contact::setContactedTime(const QString &newContactedTime)
{
    qDebug() << Q_FUNC_INFO;
    if (m_contactedTime == newContactedTime)
        return;
    m_contactedTime = newContactedTime;
    emit contactedTimeChanged();
}
