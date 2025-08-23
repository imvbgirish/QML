#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "contactmodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    ContactModel model;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("contactModel",&model);
    const QUrl url(QStringLiteral("qrc:/ListViewPhoneBook/main.qml"));
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
