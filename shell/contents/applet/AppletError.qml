/*
 *  SPDX-FileCopyrightText: 2023 meisme-dev <meisme.mail@protonmail.com>
 *
 *  SPDX-License-Identifier: AGPL-3.0-only
 */

import QtQuick 2.0
import QtQuick.Layouts 1.1
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents

RowLayout {
    id: root
    Layout.minimumWidth: PlasmaCore.Units.gridUnit * 20
    Layout.minimumHeight: PlasmaCore.Units.gridUnit * 8

    property alias reason: messageText.text

    clip: true

    PlasmaCore.IconItem {
        id: icon
        Layout.alignment: Qt.AlignVCenter
        Layout.minimumWidth: PlasmaCore.Units.iconSizes.huge
        Layout.minimumHeight: PlasmaCore.Units.iconSizes.huge
        source: "dialog-error"
    }

    PlasmaComponents.TextArea {
        id: messageText
        Layout.fillWidth: true
        Layout.fillHeight: true
        verticalAlignment: TextEdit.AlignVCenter
        readOnly: true
        width: parent.width - icon.width
        wrapMode: Text.Wrap
    }
}
