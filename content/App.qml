// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0
import QtQuick 6.4
import QtQuick.Controls
import CarDashboard
import QtQuick.Layouts
import Data 1.0 as Data

Window {
    id:window
    width: Constants.width
    height: Constants.height
    visible: true
    title: "CarDashboard"

    property bool daynightswitch: false



    Item {
        id: startWindow
        anchors.fill: parent

        Rectangle{
            anchors.fill:parent

            Image {
                id: coders_school_logo
                x: 473
                y: 43
                width: 975
                height: 358
                source: "images/coders_school_logo.png"
                fillMode: Image.PreserveAspectFit
            }

            color:"darkgrey"
        }

        RoundButton {
            x: 941
            y: 396
            width: 106
            height: 104

            onClicked: {
                wheatherButton.clicked()                
            }

            ColorImage {
                id: power
                x: 0
                y: 0
                width: 108
                height: 106
                source: "images/power.png"
                color: "#2b2a2a"
            }
        }
    }

    Item {
        id: mainWindow
        anchors.fill: parent
        enabled: false
        opacity: 0

        Item {
            id: carTurn
            enabled: true
            anchors.fill: parent
            focus:true

            Keys.onUpPressed:  car3D.state = "Straight"
            Keys.onRightPressed: car3D.state = "Right"
            Keys.onLeftPressed: car3D.state = "Left"
        }

        Rectangle {
            id:menuColor
            x:menuButton.x
            y:menuButton.y
            height: menuButton.height
            width: menuButton.width
            z:1
            gradient: Gradient {
                GradientStop { position:0.3; color: "transparent"}
                GradientStop { position: 1.1; color: "#004fc9" }
            }
        }

        Rectangle {
            id: backday
            anchors.fill: parent
            opacity: 1

            gradient: Gradient {
                GradientStop { position: 0.5; color: "#808080" }
                GradientStop { position: 1.1; color: "black" }
            }
        }

        Rectangle {
            id: backnight
            anchors.fill: parent
            opacity: 0

            gradient: Gradient {
                GradientStop { position: 2; color: "grey" }
                GradientStop { position: 0.5; color: "black" }
            }
        }


        Button {
            id: wheatherButton
            x: 17
            y: 17
            width: 66
            height: 54

            onClicked: {
                if(stateGroup.state == "Day") {
                    sun.visible = false
                    moon.visible = true
                    stateGroup.state = "Night"
                    daynightswitch = true
                    carTurn.focus = true
                    mainWindow.enabled = true
                    startWindow.enabled = false
                } else {
                    sun.visible = true
                    moon.visible = false
                    stateGroup.state = "Day"
                    daynightswitch = false
                    carTurn.focus = true
                    mainWindow.enabled = true
                    startWindow.enabled = false
                }
            }

            background: Rectangle {
                color: "transparent"
            }

            ColorImage {
                id: sun
                x: 0
                y: 0
                width: 64
                height: 54
                fillMode: Image.PreserveAspectFit
                source: "images/sun1.png"
                color: "#cfcfcf"
            }

            ColorImage {
                id: moon
                x: 0
                y: 0
                width: 66
                height: 54
                source: "images/moon.png"
                fillMode: Image.PreserveAspectFit
                color: "#cfcfcf"
            }
        }

        MenuButton {
            id: menuButton
            height: parent.height
            z:2
        }

        Gauges {
            id: gauges
            anchors {
                top: parent.top
                left: parent.left
                right:menuButton.left
            }

            Image {
                id: logo
                x: 395
                y: 311
                width: 79
                height: 100
                source: "images/logo.png"
                fillMode: Image.PreserveAspectFit
            }

            height: parent.height
        }



        StackLayout {
            id: layout
            anchors {
                top: parent.top
                right: parent.right
                left: menuButton.right
            }

            height: parent.height
            currentIndex: menuButton.actualWindow

            Car3D {
                id: car3D                
            }

            AirCondition {
                id: ac                
            }

            PhoneList {
                id: phonList                
            }

            MusicPlayer {
                id: musicPlayer                
            }

            Navigation {
                id: navigation                
            }
        }

        StateGroup {
            id: stateGroup
            states: [
                State {
                    name: "Day"

                    PropertyChanges {
                        target: backday
                        opacity: 1
                    }

                    PropertyChanges {
                        target: startWindow
                        opacity: 0
                    }

                    PropertyChanges {
                        target: mainWindow
                        opacity: 1

                    }

                    PropertyChanges {
                        target: backnight
                        opacity: 0

                    }

                    PropertyChanges {
                        target: carTurn
                        focus: true

                    }

                    PropertyChanges {
                        target: menuColor
                        opacity: 1
                    }

                },

                State {
                    name: "Night"

                    PropertyChanges {
                        target: backday
                        opacity: 0
                    }

                    PropertyChanges {
                        target: backnight
                        opacity: 1

                    }

                    PropertyChanges {
                        target: carTurn
                        focus: false
                    }

                    PropertyChanges {
                        target: startWindow
                        opacity: 0
                    }

                    PropertyChanges {
                        target: mainWindow
                        opacity: 1

                    }

                    PropertyChanges {
                        target: menuColor
                        opacity: 1
                    }
                }

            ]

            transitions:[

                Transition {
                    NumberAnimation {
                        properties: "opacity"
                        duration: 1000
                    }
                }
            ]
        }
    }



}
