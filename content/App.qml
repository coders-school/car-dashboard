// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import QtQuick.Controls
import CarDashboard
import QtQuick.Layouts

Window {
    id:gaugeWindow
    width: Constants.width * 2/3
    height: Constants.height

    property bool daynightswitch: false

    visible: true
    title: "CarDashboard"

    Item {
        id: carTurn
        anchors.fill: parent
        focus: true        
        Keys.onUpPressed:  car3D.state = "Straight"
        Keys.onRightPressed: car3D.state = "Right"
        Keys.onLeftPressed: car3D.state = "Left"        

        Rectangle {
            id: backday
            anchors.fill: parent
            opacity: 1
            gradient: Gradient {
                GradientStop { position: 0.5; color: "#9e9e9e" }
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
            text:"day"
            onClicked: {
                stateGroup.state = "Day"
                daynightswitch = false
            }

        }

        Button {
            x: 100
            text:"night"
            onClicked: {
                stateGroup.state = "Night"
                daynightswitch = true
            }
        }

        Gauges {
            id: gauges
            anchors.centerIn: parent
        }

        Window {
            id:menuWindow
            width: Constants.width / 2
            height: Constants.height * 1.9
            visible: true


            MenuButton {
                id: menuButton
            }

            StackLayout {
                id: layout
                anchors {
                    top: parent.top
                    right: parent.right
                    left: menuButton.right
                    bottom: ac.top
                }
                height: parent.height
                currentIndex: menuButton.actualWindow

                Car3D {
                    id: car3D
                    anchors.fill: parent
                }

                PhoneList {
                    id: phonList
                    anchors.fill: parent
                }

                MusicPlayer {
                    id: musicPlayer
                    anchors.fill: parent
                }

                Navigation {
                    id: navigation
                    anchors.fill: parent
                }
            }

            AirCondition {
                id: ac
                anchors.bottom: parent.bottom
                focus: true
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
                        target: backnight
                        opacity: 0

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
