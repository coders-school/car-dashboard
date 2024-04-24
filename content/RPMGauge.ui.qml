/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.8
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
import QtQuick.Shapes 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.LogicHelper 1.0

Rectangle{
    id: rpm_speed
    width: 500
    height: 500
    color: "#00000000"
    property alias rpmFrame: rpmTimeline.currentFrame

    Item {
        id: back
        Image {
        id: tarcza
        x: 0
        y: 0
        width: 505
        height: 505
        source: "SpeedGaugePicture/MainBackground.svg"
        fillMode: Image.PreserveAspectFit

        }

        Text {
            id: rpmText_0
            x: 91
            y: 345
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 22
            font.bold: true
            font.family: "Verdana"
        }
        Text {
            id: rpmText_1
            x: 55
            y: 233
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("1")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: rpmText_2
            x: 91
            y: 126
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("2")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: rpmText_3
            x: 190
            y: 58
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("3")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: rpmText_4
            x: 299
            y: 58
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("4")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }
        Text {
            id: rpmText_5
            x: 388
            y: 126
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("5")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }
        Text {
            id: rpmText_6
            x: 430
            y: 233
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("6")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }
        Text {
            id: rpmText_7
            x: 388
            y: 345
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("7")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }
    }
        Text {
        id: rpm_scale
        x: 122
        y: 360
        color: "#ffffff"
        text: qsTr("r/min")
        font.pixelSize: 14
        font.family: "Verdana"
        }

        Text {
        id: rpm_scaleText
        x: 122
        y: 345
        color: "#ffffff"
        text: qsTr("x1000")
        font.pixelSize: 14
        font.family: "Verdana"
        }
    Timeline {
        id: rpmTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                running: false
                from: 0
                duration: 1000
                loops: -1
                to: 1000
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 1100

        KeyframeGroup {
            target: rot
            property: "rotation"
            Keyframe {
                frame: 0
                value: -125.5
            }
            Keyframe {
                frame: 1000
                value: 127
            }
        }

        KeyframeGroup{
            target: arrow
            property: "color"
            Keyframe{
                value: "#ffffff"
                frame: 0
            }
            Keyframe {
                value: "#e01009"
                frame: 1099
            }
        }
    }

    Item {
        id: rot
        x: 150
        y: 150
        width: 200
        height: 200
        rotation: -125
        Rectangle {
            id: arrow
            x: 97
            y: -121
            width: 5
            height: 127
            layer.enabled: true
        }
    }

    Image {
        id: smallBackgroundSpedometer
        x: 150
        y: 150
        width: 200
        height: 210
        source: "SpeedGaugePicture/SmallBackgroundSpedometer.svg"
        fillMode: Image.PreserveAspectFit
    }


}



