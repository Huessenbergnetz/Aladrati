# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-aladrati

CONFIG += sailfishapp
CONFIG += c++11

QT += sql

DEFINES += APP_VERSION=\"\\\"$${VERSION}\\\"\"

SOURCES += \
    src/main.cpp

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

DISTFILES += \
    qml/harbour-aladrati.qml \
    rpm/harbour-aladrati.changes.in \
    rpm/harbour-aladrati.yaml \
    rpm/harbour-aladrati.spec \
    qml/pages/MainPage.qml \
    qml/cover/CoverPage.qml \
    harbour-aladrati.desktop
