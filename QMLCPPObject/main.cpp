#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/QMLCPPObject/main.qml"));
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


    //Iterating over QML Objects
    if (!engine.rootObjects().isEmpty()) {
        QObject *root = engine.rootObjects().first();
        qDebug() << root->objectName() ;

        QList<QObject*> allObjects = root->findChildren<QObject*>();
        for(QObject *obj : std::as_const(allObjects)) {

            // if(!obj->objectName().isEmpty()) {
            //     qDebug() << "User object:" << obj->objectName()
            //     << "Type:" << obj->metaObject()->className();
            // }

            qDebug() << "Object:" << obj->objectName()
            << "Type:" << obj->metaObject()->className();
        }
    }

/* 1️⃣ QQuickRootItem

What it is:
Every Window or ApplicationWindow in QML has a hidden root item internally.

Why you see it:
This is the actual QQuickItem that acts as the container for all children of your window.

No objectName:
Because it’s automatically created by the QML engine, it doesn’t have a name, so objectName() is empty.



2️⃣ QQuickDeliveryAgent

What it is:
This is an internal QML object used by the engine for event delivery and rendering.

Why you see it:
It’s part of the QML scenegraph and is automatically created; it’s not something you manually defined.

No objectName:
Same reason — it’s internal, so the name is empty. */

    return app.exec();
}
