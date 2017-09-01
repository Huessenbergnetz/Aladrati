/*
    Aladrati - An internet connection speed tester
    Copyright (C) 2017 Matthias Fehring <kontakt@buschmann23.de>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <QtQml>
#include <QGuiApplication>
#include <QQuickView>
#include <QLocale>
#include <QTranslator>
#include <QDir>
#include <QStandardPaths>

#ifndef CLAZY
#include <sailfishapp.h>
#endif


int main(int argc, char *argv[])
{
#ifndef CLAZY
    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
#else
    QGuiApplication* app = new QGuiApplication(argc, argv);
#endif

    app->setApplicationName(QStringLiteral("harbour-aladrati"));
    app->setApplicationDisplayName(QStringLiteral("Aladrati"));
    app->setApplicationVersion(QStringLiteral(APP_VERSION));

#ifndef CLAZY
    const QString l10nDir = SailfishApp::pathTo(QStringLiteral("l10n")).toString(QUrl::RemoveScheme);
    QTranslator *appTrans = new QTranslator(app.data());
    if (Q_LIKELY(appTrans->load(QLocale(), QStringLiteral("aladrati"), QStringLiteral("_"), l10nDir, QStringLiteral(".qm")))) {
        app->installTranslator(appTrans);
    }

    QTranslator *btscTrans = new QTranslator(app.data());
    if (Q_LIKELY(btscTrans->load(QLocale(), QStringLiteral("btsc"), QStringLiteral("_"), l10nDir, QStringLiteral(".qm")))) {
        app->installTranslator(btscTrans);
    }
#endif

    QDir dataDir(QStandardPaths::writableLocation(QStandardPaths::DataLocation));
    QDir cacheDir(QStandardPaths::writableLocation(QStandardPaths::CacheLocation));

    if (Q_UNLIKELY(!dataDir.exists())) {
        if (!dataDir.mkpath(dataDir.absolutePath())) {
            qFatal("Failed to create data directory.");
        }
    }

    if (Q_UNLIKELY(!cacheDir.exists())) {
        if (!cacheDir.mkpath(cacheDir.absolutePath())) {
            qFatal("Failed to create cache directory.");
        }
    }

#ifndef CLAZY
    QScopedPointer<QQuickView> view(SailfishApp::createView());
#else
    QScopedPointer<QQuickView> view(new QQuickView());
#endif

#ifndef CLAZY
    view->setSource(SailfishApp::pathTo(QStringLiteral("qml/harbour-aladrati.qml")));
#endif

    view->show();

    return app->exec();
}
