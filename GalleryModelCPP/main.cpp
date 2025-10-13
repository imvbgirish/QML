#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "galleryviewmodel.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
    GalleryViewModel gallery;
    QQmlApplicationEngine engine;

    gallery.addImages(QDate(2025, 9, 23),
                           {"https://picsum.photos/200/200?random=1",
                            "https://picsum.photos/200/200?random=2",
                            "https://picsum.photos/200/200?random=3"});

    gallery.addImages(QDate(2025, 9, 22),
                           {"https://picsum.photos/200/200?random=4",
                            "https://picsum.photos/200/200?random=5"});

    gallery.addImages(QDate(2025, 9, 25),
                      {"https://picsum.photos/200/200?random=6",
                       "https://picsum.photos/200/200?random=7",
                       "https://picsum.photos/200/200?random=8",
                       "https://picsum.photos/200/200?random=9",
                       "https://picsum.photos/200/200?random=10"});

    engine.rootContext()->setContextProperty("galleryModel", &gallery);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
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
