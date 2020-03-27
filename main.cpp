#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QRandomGenerator>
#include "randomnumber.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    qmlRegisterType<RandomNumber>("RandomNumber", 1, 0, "RandomNumber");  // !!! Подключение к qml
    engine.load(url);




    return app.exec();
}

