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

    }

    MenuButton {
        id: menuButton
    }

    AirConditionSitControl {
        id: airConditionSitControl
        x: mainScreen.width / 2 + 100
        width: mainScreen.width - x
        height: mainScreen.height
        y: 0
    }

}

