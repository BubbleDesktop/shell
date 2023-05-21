/*
 *   SPDX-FileCopyrightText: 2023 meisme-dev <meisme.mail@protonmail.com>
 *
 *   SPDX-License-Identifier: AGPL-3.0-only
 */

#ifndef STARTUPNOTIFIER_H
#define STARTUPNOTIFIER_H

#include <QObject>

namespace KWayland
{
}

class StartupNotifier : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isValid READ isValid CONSTANT)
public:
    explicit StartupNotifier(QObject *parent = nullptr);
    bool isValid() const;

Q_SIGNALS:
    void activationStarted(const QString &appId, const QString &iconName);
    void activationFinished();
};

#endif
