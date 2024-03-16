// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import CarDashboard

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    title: "CarDashboard"

    MenuButton {
        id: menuButton        
    }

    Gauges {
        id: gauges

        anchors {
            top: parent.top
            left: parent.left
            right: menuButton.left
        }

        width: parent.width
        height: parent.height
    }

    Car3D {
        id: car3D
        visible: true

        anchors {
            top: parent.top
            right: parent.right
            left: menuButton.right
        }

        width: parent.width
        height: parent.height
    }


        AirCondition {
            id: ac
            visible: false

        anchors {
            top: parent.top
            right: parent.right
            left: menuButton.right
        }

        width: parent.width
        height: parent.height
    }

    PhoneList {
        id: phonList
        visible: false

        anchors {
            top: parent.top
            right: parent.right
            left: menuButton.right
        }

        width: parent.width
        height: parent.height
    }

    MusicPlayer {
        id: musicPlayer
        visible: false

        anchors {
            top: parent.top
            right: parent.right
            left: menuButton.right
        }

        width: parent.width
        height: parent.height
    }

    Navigation {
        id: navigation
        visible: false

        anchors {
            top: parent.top
            right: parent.right
            left: menuButton.right
        }

        width: parent.width
        height: parent.height
    }
}

