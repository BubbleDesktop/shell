/*
 *  SPDX-FileCopyrightText: 2023 me is me <meisme.mail@protonmail.com>
 *
 *  SPDX-License-Identifier: AGPL-3.0-only
 */

import QtQuick 2.0

import QtQuick.Layouts 1.1

import org.kde.plasma.core 2.0 as PlasmaCore

Rectangle {
    id: root
    color: "transparent"
    property Item containment

    property int maskOffsetY: 8
    property int maskOffsetX: 8

    PlasmaCore.FrameSvgItem {
        id: bg
        visible: false
        anchors {
            fill: parent
            bottomMargin: 8
            leftMargin: 8
            rightMargin: 8
            topMargin: 8
        }
        imagePath: ""
    }



    property bool hasShadows: false
    property var panelMask: bg.mask

    readonly property int minPanelHeight: bg.minimumDrawingHeight
    readonly property int minPanelWidth: bg.minimumDrawingWidth

    onContainmentChanged: {
        if (!containment) {
            return;
        }
        containment.parent = containmentParent;
        containment.visible = true;
        containment.anchors.fill = containmentParent;
    }

    Item {
        id: containmentParent
        anchors.centerIn: bg
        width: root.width - 16
        height: root.height - 16
    }
}
