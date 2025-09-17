#ifndef CONTACTMANAGER_H
#define CONTACTMANAGER_H

#include <QObject>
#include "phonebook.h"
#include "whatsapp.h"
#include "callhistory.h"

class contactManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(Phonebook *phonebook READ getPhonebook WRITE setPhonebook NOTIFY phonebookChanged FINAL)
    Q_PROPERTY(CallHistory *callHistory READ getCallHistory WRITE setCallHistory NOTIFY callHistoryChanged FINAL)
    Q_PROPERTY(Whatsapp *whatsapp READ getWhatsapp WRITE setWhatsapp NOTIFY whatsappChanged FINAL)

public:
    explicit contactManager(QObject *parent = nullptr);

    Phonebook *getPhonebook() const;
    void setPhonebook(Phonebook *newPhonebook);

    CallHistory *getCallHistory() const;
    void setCallHistory(CallHistory *newCallHistory);

    Whatsapp *getWhatsapp() const;
    void setWhatsapp(Whatsapp *newWhatsapp);

signals:
    void phonebookChanged();
    void callHistoryChanged();
    void whatsappChanged();

private:
    Phonebook* m_phonebook;
    CallHistory* m_callHistory;
    Whatsapp* m_whatsapp;
};

#endif // CONTACTMANAGER_H
