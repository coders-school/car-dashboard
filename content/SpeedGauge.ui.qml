/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Studio.Effects 1.0
import QtQuick.Timeline 1.0
import QtQuick.Studio.LogicHelper 1.0

Item {
    id: speed
    width: 500
    height: 500
    property alias kmh_gauge:kphTimeline.currentFrame
    property alias kmh_string:speedText.text

    Image {
        id: main
        x: 0
        y: 0
        width: 500
        height: 500
        source: "SpeedGaugePicture/MainBackground.svg"
        scale: 1
        fillMode: Image.PreserveAspectFit

        Text {
            id: text1
            x: 97
            y: 338
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 22
            font.bold: true
            font.family: "Verdana"
        }

        Text {
            id: text2
            x: 62
            y: 288
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("20")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: text3
            x: 55
            y: 231
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("40")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: text4
            x: 62
            y: 174
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("60")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: text5
            x: 90
            y: 118
            width: 27
            height: 39
            color: "#ffffff"
            text: qsTr("80")
            font.pixelSize: 22
            font.family: "Verdana"
            font.bold: true
        }
    }

    Item {
        id: item2
        x: 180
        y: 175
        width: 140
        height: 140
        rotation: 180.77
        Rectangle {
            id: arrow
            x: 70
            y: 164
            width: 5
            height: 127
            radius: 2.5
            border.width: 0
            layer.effect: DirectionalBlurEffect {
                id: directionalBlur
                length: 4
            }
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: arrow.color
                }

                GradientStop {
                    position: 0.85
                    color: arrow.color
                }
            }
            layer.enabled: true

            Rectangle {
                id: rectangle6
                x: 10
                y: 0
                width: 1
                height: 100
                layer.enabled: true
            }
        }
      }



    Item {
        id: speed_number
        x:0
        y:0

    }
    Image {
        id: backgroundspedometer
        x: 149
        y: 151
        width: 200
        height: 200
        source: "SpeedGaugePicture/SmallBackgroundSpedometer.svg"
        asynchronous: true
        fillMode: Image.PreserveAspectFit
    }
    Text {
        id: speedText
        x: 179
        y: 202
        width: 141
        height: 98
        color: "#FFFFFF"
        text: "0"
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.pixelSize: 60
        font.family: "Verdana"
    }

    Text {
        id: kph_readout_195_117
        x: 222
        y: 288
        width: 55
        height: 40
        color: "#FFFFFF"
        text: "Km/h"
        font.weight: Font.Light
        font.pixelSize: 20
        rotation: 0
        font.family: "Verdana"

    }


    Timeline {
        id: kphTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                loops: 1
                duration: 1000
                from: 0
                to: 280
                running: false
            }
        ]
        enabled: true
        startFrame: 0
        endFrame: 280

        KeyframeGroup {
            target: item2
            property: "rotation"

            Keyframe {
                frame: 0
                value: 55
            }

            Keyframe {
                frame: 280
                value: 307
            }
        }



/*
        KeyframeGroup {
            target: kph_195_95
            property: "scale"

            Keyframe {
                frame: 0
                value: 1.2
            }

            Keyframe {
                frame: 2
                value: 1.2
            }

            Keyframe {
                frame: 4
                value: 1
            }
        }



        KeyframeGroup {
            target: kph_195_103
            property: "color"
            Keyframe {
                frame: 77
                value: "#ffffff"
            }

            Keyframe {
                frame: 79
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 81
                value: "#5ca8ba"
            }

            Keyframe {
                frame: 83
                value: "#ffffff"
            }
        }
        */
    }

    Text {
        id: text6
        x: 133
        y: 80
        width: 27
        height: 39
        color: "#ffffff"
        text: qsTr("100")
        font.pixelSize: 22
        font.family: "Verdana"
        font.bold: true
    }

    Text {
        id: text8
        x: 227
        y: 48
        width: 27
        height: 39
        color: "#ffffff"
        text: qsTr("140")
        font.pixelSize: 22
        font.family: "Verdana"
        font.bold: true
    }

    Text {
        id: text10
        x: 321
        y: 80
        width: 27
        height: 39
        color: "#ffffff"
        text: qsTr("180")
        font.pixelSize: 22
        font.family: "Verdana"
        font.bold: true
    }

    Text {
        id: text12
        x: 391
        y: 176
        width: 27
        height: 39
        color: "#ffffff"
        text: qsTr("220")
        font.pixelSize: 22
        font.family: "Verdana"
        font.bold: true
    }

    Text {
        id: text14
        x: 384
        y: 289
        width: 27
        height: 39
        color: "#ffffff"
        text: qsTr("260")
        font.pixelSize: 22
        font.family: "Verdana"
        font.bold: true
    }
/*
    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "State1"
            }
        ]
    }
*/
}
