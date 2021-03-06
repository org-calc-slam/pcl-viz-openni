#-------------------------------------------------
#
# Project created by QtCreator 2019-01-03T17:03:04
#
#-------------------------------------------------

QT       += core gui opengl xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Loam3DViz
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

CONFIG += c++14

INCLUDEPATH += /usr/local/include/
LIBS += -L/usr/local/lib -lopencv_core -lopencv_imgcodecs -lopencv_highgui -lopencv_imgproc -lopencv_videoio
#EIGEN
INCLUDEPATH += /usr/include/eigen3

INCLUDEPATH += /usr/local/include
LIBS += -L/usr/local/lib/ -lopencv_core -lopencv_imgcodecs -lopencv_highgui -lopencv_imgproc -lopencv_videoio -lopencv_viz
LIBS += -lGLU -lGL -lglut

INCLUDEPATH += /usr/include/pcl-1.9 \
               /usr/include/vtk-6.2 \
               /usr/include/eigen3

LIBS += /usr/lib/libpcl_io.so \
        /usr/lib/libpcl_common.so \
        /usr/lib/libpcl_visualization.so \
        /usr/lib/x86_64-linux-gnu/libboost_system.so

SOURCES += \
        mainwindow.cpp \
    glwidget.cpp \
    main.cpp \
    logparser.cpp

HEADERS += \
    glwidget.h \
    mainwindow.h \
    define.h \
    logparser.h


FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
