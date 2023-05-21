/*
    SPDX-FileCopyrightText: 2015 Marco Martin <mart@kde.org>

    SPDX-License-Identifier: MIT
*/

#include "bubbleshellprivateplugin.h"
#include "fullscreenoverlay.h"
#include "startupnotifier.h"

#include <QtQml>

void PlasmaMiniShellPrivatePlugin::registerTypes(const char *uri)
{
    Q_ASSERT(uri == QLatin1String("io.github.bubbledesktop.private.bubbleshell"));

    qmlRegisterType<FullScreenOverlay>(uri, 2, 0, "FullScreenOverlay");
    qmlRegisterSingletonType<StartupNotifier>(uri, 2, 0, "StartupNotifier", [](QQmlEngine *, QJSEngine *) {
        return new StartupNotifier;
    });
}
