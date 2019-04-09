#-------------------------------------------------
#
# Project created by QtCreator 2019-03-25T13:35:05
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Media_Studio
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
CONFIG += c++11
DESTDIR     = $$PWD/../../bin/$$QT_ARCH/
SOURCES += \
    ../../src/main.cpp \
    ../../src/media_studio.cpp \
    ../../src/commonctx.cpp

HEADERS += \
    ../../src/media_studio.h \
    ../../src/commonctx.h

#FORMS += ../../src/media_studio.ui


FFMPEGVADIR = $$PWD/../../local/ffmpeg
SDL2DIR = $$PWD/../../local/sdl2
VLCDIR = $$PWD/../../local/vlc


INCLUDEPATH +=  $$FFMPEGVADIR/include
INCLUDEPATH +=  $$SDL2DIR/include
INCLUDEPATH +=  $$VLCDIR/include
INCLUDEPATH +=  $$VLCDIR/include/vlc/plugins

LIBS += -L$$FFMPEGVADIR/lib/$$QT_ARCH/  \
        -lavdevice \
        -lavfilter \
        -lavformat \
        -lavcodec \
        -lavutil \
        -lpostproc \
        -lswresample \
        -lswscale
LIBS += -L$$VLCDIR/lib/$$QT_ARCH/ -llibvlc -llibvlccore
LIBS += -L$$SDL2DIR/lib/$$QT_ARCH/ -lSDL2

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
