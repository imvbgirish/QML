#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "login.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Login login;
    QQmlApplicationEngine engine;

    QQmlContext *context = engine.rootContext();
    context->setContextProperty("loginHandler",&login);

    const QUrl url(QStringLiteral("qrc:/LoginQML/main.qml"));
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
