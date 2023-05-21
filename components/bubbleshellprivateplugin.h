/*
    SPDX-FileCopyrightText: 2023 meisme-dev <meisme.mail@protonmail.com>

    SPDX-License-Identifier: AGPL-3.0-only
*/

#ifndef BUBBLESHELLPRIVATEPLUGIN_H
#define BUBBLESHELLPRIVATEPLUGIN_H

#include <QQmlExtensionPlugin>

class PlasmaMiniShellPrivatePlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri) override;
};

#endif
