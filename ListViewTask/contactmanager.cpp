#include "contactmanager.h"

contactManager::contactManager(QObject *parent)
    : QObject{parent}
{}

Phonebook *contactManager::getPhonebook() const
{
    return m_phonebook;
}

void contactManager::setPhonebook(Phonebook *newPhonebook)
{
    if (m_phonebook == newPhonebook)
        return;
    m_phonebook = newPhonebook;
    emit phonebookChanged();
}

CallHistory *contactManager::getCallHistory() const
{
    return m_callHistory;
}

void contactManager::setCallHistory(CallHistory *newCallHistory)
{
    if (m_callHistory == newCallHistory)
        return;
    m_callHistory = newCallHistory;
    emit callHistoryChanged();
}

Whatsapp *contactManager::getWhatsapp() const
{
    return m_whatsapp;
}

void contactManager::setWhatsapp(Whatsapp *newWhatsapp)
{
    if (m_whatsapp == newWhatsapp)
        return;
    m_whatsapp = newWhatsapp;
    emit whatsappChanged();
}
