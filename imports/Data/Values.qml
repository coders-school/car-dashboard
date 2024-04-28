/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

pragma Singleton
import QtQuick 2.10
import "simulation.js" as JS

QtObject {
    id: values

       property bool carMoving: false

       property string time:"00:00"

       property bool highBeam_active: false
       property bool left_active: false
       property bool right_active: false

       property bool checkEngine_active: false
       property bool charging_active: false
       property bool abs_active: false
       property bool cruiseControl_active: false
       property bool doorOpen_active: false
       property bool esp_active: false
       property bool imobilizer_active: false
       property bool parkingBrake_active: false
       property bool seatBelt_active: false
       property bool sterringFault_active: false
       property bool antiFog_active: false

       property int rpm_gaugeINT:0
       property int kmh_gaugeINT:0
       property string kmh_gaugeString :"0"
       property int fuelLevelInt:0
       property int currentEngineTemperatureInt: 0

    /* State change bool */
    property bool booting: true
    readonly property real bootDuration: 5000

    property Timer bootTimer: Timer{
        running: true
        repeat: false
        onTriggered: values.booting = false
        interval: bootDuration
    }
    property Timer rpmTimer: Timer{
        running: !values.booting
        repeat: true
        onTriggered: JS.rpmTimer()
        interval: 5
    }
    property Timer kmhTimer: Timer{
        running: !values.booting
        repeat: true
        onTriggered: JS.kmhTimer()
        interval: 35
    }
    property Timer icons: Timer{
        running: !values.booting
        repeat: true
        onTriggered: JS.iconsTimer()
        interval: 500
    }
    property Timer fuel_temp: Timer{
        running: !values.booting
        repeat: true
        onTriggered: JS.fuelGauge()
        interval: 1500
    }

    property Timer actualTime: Timer{
        running: true
        repeat: true
        onTriggered: time = JS.getCurrentTime()
        interval: 1000
    }


}
