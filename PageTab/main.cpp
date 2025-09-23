#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QAccessible>
#include <QDebug>

static const char* roleName(QAccessible::Role role)
{
    switch (role) {
    case QAccessible::Pane: return "Pane";
    case QAccessible::Grouping: return "Grouping";
    case QAccessible::PageTab: return "PageTab";
    default: return "Other";
    }
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/PageTab/main.qml"));
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

    QObject *root = engine.rootObjects().first();
    QObject *page1 = root->findChild<QObject*>("page1");
    if (page1) {
        QAccessibleInterface *iface = QAccessible::queryAccessibleInterface(page1);
        if (iface) {
            QAccessible::Role role = iface->role();
            qDebug() << "Accessible role for page1:" << roleName(role);
        } else {
            qDebug() << "No accessible interface found for page1";
        }
    } else {
        qDebug() << "Page object not found";
    }

    return app.exec();
}
