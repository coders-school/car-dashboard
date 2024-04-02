import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline
import QtQuick.Studio.LogicHelper 1.0


GaugesTestForm {

    Rectangle{
        id:speedGauge
        x: 500
        y: 259
        width: 50
        height: 43
        color:"transparent"
        radius: width
        rotation: speed / 4

        Image {
            id: wskazowka_02_PNG
            x: -433
            y: -219
            width: 691
            height: 459
            source: "images/Wskazowka_02_PNG.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: text1
        x: 480
        y: 336
        width: 91
        height: 61
        color: "#ffffff"
        text:  stringMapper.text
        font.pixelSize: 45
        horizontalAlignment: Text.AlignHCenter
        font.family: "Agency FB"

        StringMapper {
            id: stringMapper
            input: rangeMapper.output
            decimals: 0
        }

        RangeMapper {
            id: rangeMapper
            outputMaximum: 345
            inputMaximum: 1700
            input: speed
        }
    }


    // Text {
    //     id: text2
    //     x: 600
    //     y: 559
    //     width: 91
    //     height: 61
    //     color: "#ffffff"
    //     text: { if(stringMapper.text == "0") {
    //             "N"} else { stringMapper.text }
    //         }

    //     font.pixelSize: 50
    //     horizontalAlignment: Text.AlignHCenter
    //     font.family: "Agency FB"

    //     // StringMapper {
    //     //     id: stringMapper2
    //     //     input: { if(rangeMapper1.output >= 40 && rangeMapper1.output < 59) {
    //     //                 2 } else if (rangeMapper1.output >= 59 && rangeMapper1.output < 80) {
    //     //                 3 } else if (rangeMapper1.output >= 80 && rangeMapper1.output < 115) {
    //     //                 4 } else if (rangeMapper1.output >= 115 && rangeMapper1.output < 155) {
    //     //                 5 } else if (rangeMapper1.output >= 155) {
    //     //                 6 } else if (rangeMapper1.output >= 1 && rangeMapper1.output < 40) {
    //     //                 1 } else {
    //     //                 0 }
    //     //         }
    //     //     decimals: 0
    //     // }

    //     RangeMapper {
    //         id: rangeMapper1
    //         outputMaximum: 345
    //         inputMaximum: 1900
    //         input: speed
    //     }
    // }

    // Switch {
    //     id:speedSwitch
    //     checked: false
    // }

    Button {
        id:button
        x: 48
        y: 50
        text: "Gas"

        Timer {
            id: longPressTimer
            interval: 4 //your press-and-hold interval here
            repeat: false
            running: false
            onTriggered: {
                button.pressAndHold()
            }
        }

        onPressAndHold: {
            if(pressed){
                if(speed >= 930) {
                    longPressTimer.running = false
                } else {
                    speed++
                    longPressTimer.running = true
                }
            }
            else {
                longPressTimer.running = false
            }
        }

        Timer {
            id: decreaseTimer
            interval: 30 //your press-and-hold interval here
            repeat: false
            running: false
            onTriggered: {
                button.released()
            }
        }

        onReleased: {
            if(speed != 0) {
                decreaseTimer.running = true
                speed--
                if(button.pressed) {
                    decreaseTimer.running = false
                }
            } else {
                decreaseTimer.running = false
            }
        }
    }

    Button {
        id: butStop
        x: 140
        y: 50
        text: "Stop"
        Timer {
            id: stopTimer
            interval: 5 //your press-and-hold interval here
            repeat: false
            running: false
            onTriggered: {
                butStop.pressAndHold()
            }
        }

        onPressAndHold: {
            if(pressed){
                if(speed <= 0) {
                    stopTimer.running = false
                } else {
                    speed--
                    stopTimer.running = true
                }
            }
            else {
                stopTimer.running = false
            }
        }

    }

}


