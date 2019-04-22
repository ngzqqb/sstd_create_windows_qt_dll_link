
QT += core
QT += gui
QT += widgets

CONFIG += console

TARGET = sstd_create_windows_qt_dll_link
TEMPLATE = app

SOURCES += \
        $$PWD/main.cpp \
        $$PWD/MainWindow.cpp

HEADERS += \
        $$PWD/MainWindow.hpp

FORMS += \
        $$PWD/MainWindow.ui

include($$PWD/../sstd_library/cplusplus_basic.pri)
include($$PWD/../sstd_library/sstd_build_path.pri)

DESTDIR = $${SSTD_LIBRARY_OUTPUT_PATH}

DEFINES *= QT_BIN_DIR_WHERE=\\\"$$[QT_INSTALL_BINS]\\\"
DEFINES *= QT_BIN_DIR_TARGET=\\\"$${SSTD_LIBRARY_OUTPUT_PATH}\\\"
