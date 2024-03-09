// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import CarDashboard

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "CarDashboard"

    MainScreeen {
        id: mainScreen

        MenuButton {
            id: menuButton
        }

        Gauges {
            id: gauges

            width: parent.width * 0.47
            height: parent.height
        }

        Car3D {
            id: car3D
            visible: false

            anchors {
                top: parent.top
                right: parent.right
            }

            width: parent.width * 0.47
            height: parent.height
        }

        AirCondition {
            id: ac
            visible: false

            anchors {
                top: parent.top
                right: parent.right
            }

            width: parent.width * 0.47
            height: parent.height
        }

        PhoneList {
            id: phonList
            visible: false

            anchors {
                top: parent.top
                right: parent.right
            }

            width: parent.width * 0.47
            height: parent.height
        }

        MusicPlayer {
            id: musicPlayer
            visible: false

            anchors {
                top: parent.top
                right: parent.right
            }

            width: parent.width * 0.47
            height: parent.height
        }

        Navigation {
            id: navigation
            visible: false

            anchors {
                top: parent.top
                right: parent.right
            }

            width: parent.width * 0.47
            height: parent.height

        }
    }
}

