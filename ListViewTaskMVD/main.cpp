#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "phonebook.h"
#include "callhistory.h"
#include "whatsapp.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    ContactDataModel* phonebook = new Phonebook;
    phonebook->createContactData();

    ContactDataModel* callHistory = new CallHistory;
    callHistory->createContactData();

    ContactDataModel* whatsapp = new Whatsapp;
    whatsapp->createContactData();

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("PhoneBookModel", phonebook);
    engine.rootContext()->setContextProperty("CallHistoryModel", callHistory);
    engine.rootContext()->setContextProperty("WhatsappModel", whatsapp);

    const QUrl url(QStringLiteral("qrc:/ListViewTaskMVD/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
