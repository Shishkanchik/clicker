#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Laptop.h"
#include "store.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    Laptop laptop;
    Store store;


    engine.rootContext()->setContextProperty("laptop", &laptop);
    engine.rootContext()->setContextProperty("store", &store);

    engine.loadFromModule("clicker", "Main");

    return QGuiApplication::exec();
}
