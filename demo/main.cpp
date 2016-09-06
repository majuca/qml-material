#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "plugin.h"
#include <QQuickStyle>

int main(int argc, char *argv[])
{

    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QCoreApplication::setAttribute(Qt::AA_UseOpenGLES);
    QGuiApplication app(argc, argv);

    QQuickStyle::setStyle("Material");
    MaterialPlugin qmlMaterial;
    qmlMaterial.registerTypes("Material");

    QQmlApplicationEngine engine;
    engine.addImportPath(":/.");

    engine.load((QUrl(QStringLiteral("qrc:/main.qml"))));

    return app.exec();
}
