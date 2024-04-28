// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import QtQuick.Controls
import CarDashboard
import QtQuick.Layouts

Window {
    id:window
    width: Constants.width
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
            x:100
            text:"night"
            onClicked: {
                stateGroup.state = "Night"
                daynightswitch = true
            }
        }

        MenuButton {
            id: menuButton
            height: parent.height
        }

        Gauges {
            id: gauges

            anchors {
                top: parent.top
                left: parent.left
                right:menuButton.left
            }

            height: parent.height
        }

        StackLayout {
            id: layout
            anchors {
                top: parent.top
                right: parent.right
                left:menuButton.right
            }

            height: parent.height
            currentIndex: menuButton.actualWindow

            Car3D {
                id: car3D
                anchors.fill: parent
            }

            AirCondition {
                id: ac
                anchors.fill: parent
                focus: true
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
