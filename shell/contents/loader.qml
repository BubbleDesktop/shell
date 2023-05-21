/*   
 *   SPDX-FileCopyrightText: 2023 meisme-dev <meisme.mail@protonmail.com>
 *
 *   SPDX-License-Identifier: AGPL-3.0-only
 */

import QtQuick 2

Item {
    id: main

    property string shell  : "io.github.bubbledesktop.bubbleshell"
    property bool willing  : true
    property string currentSession
    property int priority : 0 //currentSession == "/usr/share/xsessions/plasma-minishell" ? 0 : 10

    // This is not needed, but allows the
    // handler to know whether its shell is loaded
    property bool loaded   : false
}

