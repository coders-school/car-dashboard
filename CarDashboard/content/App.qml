// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0
import QtQuick 6.4
import QtQuick.Controls 6.4
import QtQuick3D 6.4
import CarDashboard
import Quick3DAssets.Free_porsche_911_carrera_4s 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: 0
                y: 307.359
                brightness: 20
                eulerRotation.z: -0.00001
                eulerRotation.y: 0
                eulerRotation.x: -35.43074
                z: 374.99622
            }

            PerspectiveCamera {
                id: sceneCamera
                z: 350
            }

            Free_porsche_911_carrera_4s {
                id: porsche911
                x: -9.135
                y: -17.753
                eulerRotation.z: 0.00001
                eulerRotation.y: -35.20893
                eulerRotation.x: 0
                z: -178.29182
                scale: Qt.vector3d(80, 80 , 80)
                opacity: 0

            }

            NumberAnimation {
                id: porscheOpaRunUP
                targets: [porsche911, siemaEniu]
                property: "opacity"
                from:0
                to:1
                duration: 3000
            }
            NumberAnimation {
                id: porscheOpaRunDown
                target: logoPorsche
                property: "opacity"
                from:1
                to:0
                duration: 800
            }

            NumberAnimation {
                id: rotationCar
                target: porsche911
                property: "eulerRotation.y"
                from: porsche911.eulerRotation.y
                to: porsche911.eulerRotation.y + 360
                loops: Animation.Infinite
                duration: 30000
            }
        }
        Button {
            id:startBut
            x: 718
            y: 299
            width: 484
            height: 483

            background: Rectangle {
                color: "transparent"
            }

            Image {
                id: logoPorsche
                anchors.fill: parent
                fillMode:Image.PreserveAspectFit
                source: "images/pngwing.com (1).png"
                anchors.rightMargin: 8
                anchors.bottomMargin: -6
                anchors.leftMargin: -8
                anchors.topMargin: 6

            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onExited: {
                    logoPorsche.scale = 1.0
                }

                onEntered: {
                    logoPorsche.scale = 1.02
                }
                onClicked: {
                    if(porscheOpaRunUP.stop)  {
                        porscheOpaRunUP.start()
                        porscheOpaRunDown.start()
                        startBut.enabled = false
                        rotationCar.start()
                    }
                }
            }

        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Text {
        id:siemaEniu
        text: qsTr("Hello World Guys :)")
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 212
        font.family: "Copperplate Gothic Bold"
        font.pointSize: 50
        opacity: 0
    }
}
