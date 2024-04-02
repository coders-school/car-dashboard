// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import CarDashboard
import QtQuick.Layouts

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    title: "CarDashboard"

    property double speed: 0    

    MenuButton {
        id: menuButton
        height: parent.height
    }

    Gauges {
        id: gauges

        anchors {
            top: parent.top
            left: parent.left
            right:menuButton.left
        }

        height: parent.height
    }

    StackLayout {
        id: layout
        anchors {
            top: parent.top
            right: parent.right
            left:menuButton.right
        }

        height: parent.height
        currentIndex: menuButton.actualWindow

        Car3D {
            id: car3D
            anchors.fill: parent
        }

        AirConditionSitControl {
            id: acSitControl
            anchors.fill: parent
        }

        PhoneList {
            id: phonList
            anchors.fill: parent
        }

        MusicPlayer {
            id: musicPlayer
            anchors.fill: parent
        }

        Navigation {
            id: navigation
            anchors.fill: parent
        }
    }
}



