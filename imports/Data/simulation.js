/****************************************************************************
**
** Copyright (C) 2018 The Qt Company Ltd.
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

/* simulator for testing */

/* TACHOMETER VARIABLES */
var rpm_arrowCounter = 0
var rpm_maxValue = 1000
var rpm_idle = 100
var engineTempRpm = 800

/* SPEEDOMETER VARLIABLES */
var kmh_arrowCounter = 0
var maxKmh = 260
var minKmh = 0.1

/* LOOP for speed and rpm gauge */
var reverseRpm = false
var reverseKph = false

/* fuel Level and engine Temperature*/
var fuelLevelInt = 0
var engineTempInt =0


/* ISO ICON BOOLEANS */

var highBeam
var leftBlink
var rightBlink
var checkEngine
var charging
var abs
var cruiseControl
var doorOpen
var esp
var imobilizer
var parkingBrake
var seatBelt
var sterringFault
var antiFog
var carMoving



/* ======================== Set values =================*/

/* RPM gauge */
    function setArrowRpm() { values.rpm_gaugeINT  =(rpm_arrowCounter) }
    function setArrowKmh() { values.kmh_gaugeINT =(kmh_arrowCounter) }
    function setDisplayKph() { values.kmh_gaugeString = (Math.round(kmh_arrowCounter))}
    function setEngineTemp() { values.currentEngineTemperatureInt = (engineTempInt) }
    function setFuelLevel() { values.fuelLevelInt = (fuelLevelInt)}
/* bool values*/
    function setHighBeam() { values.highBeam_active = (highBeam)}
    function setLeftBlink() { values.left_active = (leftBlink)}
    function setRightBlink() { values.right_active = (rightBlink)}
    function setCheckEngine() {values.checkEngine_active = (checkEngine) }
    function setCharging() { values.charging_active = (charging); }
    function setAbs() { values.abs_active = (abs); }
    function setCruiseControl() { values.cruiseControl_active = (cruiseControl); }
    function setDoorOpen() { values.doorOpen_active = (doorOpen); }
    function setEsp() { values.esp_active = (esp); }
    function setImobilizer() { values.imobilizer_active = (imobilizer); }
    function setParkingBrake() { values.parkingBrake_active = (parkingBrake); }
    function setSeatBelt() { values.seatBelt_active = (seatBelt); }
    function setSterringFault() { values.sterringFault_active = (sterringFault); }
    function setAntiFog() { values.antiFog_active = (antiFog); }

    function setCarMoving(){ values.carMoving =- (carMoving);}



/* MAIN LOOP */

/* TIMER FUNCTION FOR THE TACHOMETER */
function rpmTimer() {
    if (!reverseRpm) {
        if (rpm_arrowCounter < rpm_maxValue) {
            rpm_arrowCounter++

        } else {
            reverseRpm = true
        }
    } else {
        if (rpm_arrowCounter > rpm_idle) {
            rpm_arrowCounter--
        } else {
            reverseRpm = false
        }
    }
    setArrowRpm()
}

/* TIMER FUNCTION FOR THE SPEEDOMETER */

function kmhTimer(){
    if (!reverseKph) {
        if (kmh_arrowCounter < maxKmh)
        {
            kmh_arrowCounter++
            if(kmh_arrowCounter > 20){
                carMoving = true
            }else{
                carMoving = false
            }
        } else {
            reverseKph = true
        }
    } else {
        if (kmh_arrowCounter > minKmh) {
            kmh_arrowCounter--
            if(kmh_arrowCounter > 20){
                carMoving = true
            }else{
                carMoving = false
            }
        } else {
            reverseKph = false
        }
    }
    setDisplayKph()
    setArrowKmh()
    setCarMoving()
}


var counter = 0;
var counterMax = 6;
var counterMin = 0;
var reverseCounter = false;

function fuelGauge() {
    if (!reverseCounter) {
        if (counter < counterMax) {
            counter++;
            fuelLevelInt = counter;
            engineTempInt = counter;
        } else {
            reverseCounter = true;
        }
    } else {
        if (counter > counterMin) {
            counter--;
            fuelLevelInt = counter;
            engineTempInt = counter;
        } else {
            reverseCounter = false;
        }
    }
    setEngineTemp()
    setFuelLevel()
}




var tempCounter = 0;
var tempCounterMax = 10;
var tempCounterMin = 0;
var reversIcons = false;

function iconsTimer() {
    if (!reversIcons) {
        if (tempCounter < tempCounterMax) {
            tempCounter++;
            toggleRandomControl(true);
        } else {
            reversIcons = true;
        }
    } else {
        if (tempCounter > tempCounterMin) {
            tempCounter--;
            toggleRandomControl(false);
        } else {
            reversIcons = false;
        }
    }
}


// Function to toggle a random control
function toggleRandomControl(value) {
    // Randomly select a control to toggle
    var controlIndex = Math.floor(Math.random() * 14); // Random number from 0 to 10
    switch (controlIndex) {
        case 0:
            checkEngine = value;
            setCheckEngine();
            break;
        case 1:
            charging = value;
            setCharging();
            break;
        case 2:
            abs = value;
            setAbs();
            break;
        case 3:
            cruiseControl = value;
            setCruiseControl();
            break;
        case 4:
            doorOpen = value;
            setDoorOpen();
            break;
        case 5:
            esp = value;
            setEsp();
            break;
        case 6:
            imobilizer = value;
            setImobilizer();
            break;
        case 7:
            parkingBrake = value;
            setParkingBrake();
            break;
        case 8:
            seatBelt = value;
            setSeatBelt();
            break;
        case 9:
            sterringFault = value;
            setSterringFault();
            break;
        case 10:
            antiFog = value;
            setAntiFog();
            break;
        case 11:
            highBeam = value;
            setHighBeam();
            break;
        case 12:
            leftBlink = value;
            setLeftBlink();
            break;
        case 13:
            rightBlink = value;
            setRightBlink();
            break;
    }
}

function getCurrentTime() {
    var currentTime = new Date();
    var hours = currentTime.getHours();
    var minutes = currentTime.getMinutes();
    minutes = (minutes < 10 ? "0" : "") + minutes;
    var timeString = hours + ":" + minutes ;
    return timeString;
}
