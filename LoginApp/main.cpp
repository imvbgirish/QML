#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "studentviewmodel.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    StudentViewModel* studentViewModel = new StudentViewModel();
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("studentModel",studentViewModel);

    const QUrl url(QStringLiteral("qrc:/LoginApp/main.qml"));
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
