/*
 *   SPDX-FileCopyrightText: 2023 meisme-dev <meisme.mail@protonmail.com>
 *
 *   SPDX-License-Identifier: AGPL-3.0-only
 */

import QtQuick 2.2
import QtQuick.Window 2.2
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kquickcontrolsaddons 2.0 as KQuickControlsAddons
import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.plasmoid 2.0


Item {
    id: main
    objectName: "io.github.bubbledesktop.desktoptoolbox"

    z: 999
    anchors.fill: parent

    Rectangle {
        anchors {
            left: parent.left
            bottom: parent.bottom
            right: parent.right
        }

        height: configButtons.height + configButtons.anchors.bottomMargin

        opacity: plasmoid.editMode
        Behavior on opacity {
            OpacityAnimator {
                duration: PlasmaCore.Units.longDuration
                easing.type: Easing.InOutQuad
            }
        }

        gradient: Gradient {
            GradientStop { position: 0.0; color: "transparent" }
            GradientStop { position: 1.0; color: "black" }
        }
    }

    DesktopConfigButtons {
        id: configButtons
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            bottomMargin: main.height - (plasmoid.availableScreenRect.y + plasmoid.availableScreenRect.height)
        }
    }
}
