TEMPLATE = app

QT += qml quick quickcontrols2

SOURCES += main.cpp
RESOURCES += demo.qrc icons/icons.qrc

include(../material.pri)

#win32 {

#    CONFIG( debug, debug|release ) {
#        # debug
#        DEPLOY_TARGET = $$shell_quote($$shell_path($${OUT_PWD}/debug/$${TARGET}.exe))
#    } else {
#        # release
#        DEPLOY_TARGET = $$shell_quote($$shell_path($${OUT_PWD}/release/$${TARGET}.exe))
#    }

#    # Use += instead of = if you use multiple QMAKE_POST_LINKs
#    QMAKE_POST_LINK = windeployqt $${DEPLOY_TARGET}
#}


