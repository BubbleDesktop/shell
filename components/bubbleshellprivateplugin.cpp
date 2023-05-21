/*
    SPDX-FileCopyrightText: 2023 meisme-dev <meisme.mail@protonmail.com>

    SPDX-License-Identifier: AGPL-3.0-only
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
