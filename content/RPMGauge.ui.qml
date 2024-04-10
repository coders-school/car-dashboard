/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
import QtQuick.Shapes 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.LogicHelper 1.0


Rectangle{
    id: rpm_speed
    color: "#000000"
    width: 500
    height: 500
    property alias rpmFrame: rpmTimeline.currentFrame

    Item {
        id: back
        Image {
        id: tarcza
        x: 0
        y: 0
        width: 505
        height: 505
        source: "RPMGauge/tarcza.svg"
        fillMode: Image.PreserveAspectFit
        }

        Text {
        id: text2
        x: 122
        y: 360
        color: "#ffffff"
        text: qsTr("r/min")
        font.pixelSize: 14
        font.family: "Verdana"
        }

        Text {
        id: text3
        x: 122
        y: 345
        color: "#ffffff"
        text: qsTr("x1000")
        font.pixelSize: 14
        font.family: "Verdana"
        }
    }

    GroupItem{
        x: 0
        y: 0
        width: 500
        height: 496
        layer.effect: GaussianBlurEffect {
            id: gaussianBlur
            samples: 20
        }
        layer.enabled: true


        Item {
            id: item2
            x: 1
            y: 0
            width: 497
            height: 492
            layer.enabled: true
            layer.effect: OpacityMaskEffect {
                id: opacityMask
                maskSource: mask
            }

            PieItem {
                id: pie
                x: 4
                y: -4
                width: 500
                height: 500
                layer.enabled: true
                gradient: ConicalGradient {
                    centerY: 270
                    centerX: 270
                    angle: -130 // to wyznacza linie od kiedy jest mocne przejście
                    GradientStop {
                        position: 0.9
                         color: "#0390fc"
                    }

                    GradientStop {
                        position: 0.5
                        color: "#031cfc"
                    }

                    GradientStop {
                        position: 0.28
                        color: "#f21a02"
                    }
                }
                end: 360
                strokeColor: "#00000000"


            }
        }

        Item {
            id: mask
            x: 0
            y: -4
            width: 500
            height: 500
            visible: true

            ArcItem { // pozycja od której ma zaznaczać łuk end i begin; stroke to jest szerokosć
                id: arc
                width: 500
                height: 500
                layer.enabled: false
                end: 120
                strokeColor: "#8d1c1cff"
                begin: -128
                strokeWidth: 45
                fillColor: "#00000000"
            }
        }
    }

    Timeline {
        id: rpmTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                pingPong: true
                running: false
                from: 0
                duration: 1000
                loops: -1
                to: 1200
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 1000

        KeyframeGroup {
            target: rot
            property: "rotation"
            Keyframe {
                frame: 0
                value: -125.5
            }
            Keyframe {
                frame: 1000
                value: 125
            }
        }

        KeyframeGroup {
            target: arc
            property: "end"
            Keyframe {
                value: -128
                frame: 0
            }
            Keyframe {
                value: 125
                frame: 1000
            }
        }

        KeyframeGroup {
            target: mask
            property: "visible"
            Keyframe {
                value: false
                frame: 0
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
                frame: 1000
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
            radius: 2.5
            layer.effect: DirectionalBlurEffect {
                id: directionalBlur
                length: 3
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

