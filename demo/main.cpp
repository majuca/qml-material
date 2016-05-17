#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "plugin.h"

int main(int argc, char *argv[])
{

    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    MaterialPlugin qmlMaterial;
    qmlMaterial.registerTypes("Material");

    QQmlApplicationEngine engine;
    engine.addImportPath(":/.");

    engine.load((QUrl(QStringLiteral("qrc:/main.qml"))));

    return app.exec();
}
