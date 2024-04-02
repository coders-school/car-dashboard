import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 6.4
import Quick3DAssets.Supra
import QtQuick.Timeline 1.0
import QtQuick.Layouts
import Quick3DAssets.Stylized_road
import Quick3DAssets.Drogra3D
import Quick3DAssets.Drogra2
import Quick3DAssets.Drogra3
import Quick3DAssets.Road_Mid



Item {

    property bool switchDoorRight: false
    property bool switchDoorLeft: false
    property bool switchDoorTrunk: false

    Rectangle {
        color:"transparent"
        id: car3DClass
        anchors.fill: parent

        View3D {
            id: view3D
            anchors.fill: parent
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
                    x: -388.973
                    y: 111.084
                    brightness: 1.7
                    eulerRotation.z: -0
                    eulerRotation.y: 0
                    eulerRotation.x: -19.561
                    z: 310.28943
                }

                PerspectiveCamera {
                    id: sceneCamera
                    x: 5.163
                    y: 76.679
                    eulerRotation.z: 0
                    eulerRotation.y: -0
                    eulerRotation.x: -12.1467
                    z: 336.44199
                }

                Supra {
                    id: car3Dmodel
                    x: 23.318
                    y: -65.905
                    eulerRotation.z: -0.00001
                    eulerRotation.y: 320
                    eulerRotation.x: -0
                    z: -28.11506
                    scale: Qt.vector3d(80, 80 , 80)
                    leftDoorAngle: 0
                    rightDoorAngle: 0
                }
            }

            Node{
            id:lines
            x: -0.386
            y: 0
            z: -2521.64233
            opacity: 0
                Model {
                    id:midlleline1
                    x: -145.172
                    y: -67.944
                    source: "#Cube"
                    z: -1250.27063
                    scale: Qt.vector3d(0.15,0.01,80)
                    // opacity: 0
                    materials: PrincipledMaterial {
                        baseColor: "white"
                    }
                }

                Model {
                    id:midlleline2
                    x: 165.172
                    y:-67.944
                    source: "#Cube"
                    z: -1247.27075
                    scale: Qt.vector3d(0.15,0.01,80)
                    // opacity: 0
                    materials: PrincipledMaterial {
                        baseColor: "white"
                    }
                }
            }



            // NumberAnimation {
            //     id: rotationCar
            //     target: car3Dmodel
            //     property: "eulerRotation.y"
            //     from: car3Dmodel.y
            //     to: car3Dmodel.y + 360
            //     loops: Animation.Infinite
            //     duration: 60000
            //     // running: true
            // }

            NumberAnimation {
                id: trunkAnim
                target: car3Dmodel
                property: "trunkAngle"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
                from: 0
                to: 50
                duration: 600
                // running: true
                // loops: Animation.Infinite
            }

            NumberAnimation {
                id: leftDoorAnim
                target: car3Dmodel
                property: "leftDoorAngle"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
                from: 0
                to: -50
                duration: 600
                // running: true
                // loops: Animation.Infinite
            }

            Timeline {
                id: timeline
                animations: [
                    TimelineAnimation {
                        id: timelineAnimation
                        running: false
                        loops: 1
                        duration: 1000
                        to: 1000
                        from: 0
                    }
                ]
                startFrame: 0
                endFrame: 4000
                enabled: false
            }

            NumberAnimation {
                id: rightDoorAnim
                target: car3Dmodel
                property: "rightDoorAngle"  //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
                from: 0
                to: 50
                duration: 600
                // running: true
                // loops: Animation.Infinite
            }

            Node{
                id:road
                x: 0
                y: -27.32
                opacity: 0
                z: 0

                Drogra3 {
                    id: stylized_road1
                    x: -10.057
                    y: -40.545
                    eulerRotation.y: -90
                    z: -4080.79736
                    scale: Qt.vector3d(60, 1 , 80)
                }

                Drogra3 {
                    id: stylized_road2
                    x: 313.558
                    y: -40.545
                    z: -4080.79736
                    eulerRotation.y: -90
                    scale: Qt.vector3d(60, 1 , 80)
                }

                Drogra3 {
                    id: stylized_road3
                    x: -334.8
                    y: -40.545
                     z: -4080.79736
                    eulerRotation.y: -90
                    scale: Qt.vector3d(60, 1 , 80)

                }
            }
        }

        Button{
            id:switchLefttdoor
            text:"Left Door"
            enabled: if(speed > 1) {
                         false
                     } else {true}
            x: 200
            y: 100
            onClicked: {
                car3DClass.state = "leftdoorChange"
                leftDoorAnim.running = true
                if(switchDoorLeft == false) {
                    leftDoorAnim.from = -50
                    leftDoorAnim.to = 0
                    switchDoorLeft = true

                } else if (switchDoorLeft == true) {
                    leftDoorAnim.from = 0
                    leftDoorAnim.to = -50
                    switchDoorLeft = false
                    if(switchDoorRight == false && switchDoorTrunk == false && switchDoorLeft == false) {
                        car3DClass.state = "Home"
                    } /*else if(switchDoorRight == true) {
                        car3DClass.state = "rightdoorChange"
                    } else {
                        car3DClass.state = "trunkChange"
                    }*/



                }
            }
        }

        Button{
            id:switchTrunk
            text:"Trunk"
            enabled: if(speed > 1) {
                         false
                     } else {true}
            x: 400
            y: 100
            onClicked: {
                car3DClass.state = "trunkChange"
                trunkAnim.running = true
                if(switchDoorTrunk == true) {
                    trunkAnim.from = 0
                    trunkAnim.to = 50
                    switchDoorTrunk = false
                    if(switchDoorRight == false && switchDoorTrunk == false && switchDoorLeft == false) {
                        car3DClass.state = "Home"
                    } /*else if(switchDoorLeft == true) {
                        car3DClass.state = "leftdoorChange"
                    } else {
                        car3DClass.state = "rightdoorChange"
                    }*/
                } else if (switchDoorTrunk == false) {
                    trunkAnim.from = 50
                    trunkAnim.to = 0
                    switchDoorTrunk = true

                }
            }
        }

        Button{
            id:switchRightdoor
            text:"Right Door"
            enabled: if(speed > 1) {
                         false
                     } else {true}
            x: 600
            y: 100
            onClicked: {
                car3DClass.state = "rightdoorChange"
                rightDoorAnim.running = true
                if(switchDoorRight == true) {
                    rightDoorAnim.from = 0
                    rightDoorAnim.to = 50
                    switchDoorRight = false
                    if(switchDoorRight == false && switchDoorTrunk == false && switchDoorLeft == false) {
                        car3DClass.state = "Home"
                    } /*else if(switchDoorLeft == true) {
                        car3DClass.state = "leftdoorChange"
                    } else {
                        car3DClass.state = "trunkChange"
                    }*/
                } else if (switchDoorRight == false) {
                    rightDoorAnim.from = 50
                    rightDoorAnim.to = 0
                    switchDoorRight = true

                }
            }
        }

        // Button{
        //     enabled: false
        //     id: switchHome
        //     text:"Home"
        //     x: 400
        //     y: 150
        //     onClicked: {

        //         car3DClass.state = "Home"

        //     }
        // }

        Button{
            id: switchDrive
            visible: false
            enabled: if(switchGauge.checked == true) {
                         car3DClass.state = "Straight"
                     } else if (switchGauge.checked == false) {
                         car3DClass.state = "Home"
                     }
            text:"Drive"
            x: 400
            y: 470
            onClicked: {
                car3DClass.state = "Straight"
            }
        }

        Button {
            id:turnLeft
            enabled: if(speed > 1) {
                         true
                     } else {false}
            text:"turnLeft"
            x: 200
            y: 470
            onClicked: {
                car3DClass.state = "Left"
            }

        }

        Button {
            id:turnRight
            enabled: if(speed > 1) {
                         true
                     } else {false}
            text:"turnRight"
            x: 600
            y: 470
            onClicked: {
                car3DClass.state = "Right"
            }

        }


        Button {
            id:straight
            enabled: if(speed > 1) {
                         true
                     } else {false}
            text:"Staight"
            x: 400
            y: 470
            onClicked: {
                car3DClass.state = "Straight"
            }

        }

        // Item {
        //     anchors.fill: parent
        //     focus: true
        //     Keys.onPressed: (event)=> {
        //         if (event.key == Qt.Key_Left) {
        //             car3DClass.state = "Left"
        //             event.accepted = true;
        //         }
        //     }
        // }

        Switch {
            enabled: false
            id: switchLeft
            x: 200
            y: 54
            width: 120
            height: 40
            text: "LeftDoor"
            checked: switchDoorLeft
        }

        Switch {
            enabled: false
            id: switchRight
            x: 600
            y: 54
            text: "RightDoor"
            checked: switchDoorRight
        }

        Switch {
            enabled: false
            id: switcheTrunk
            x: 400
            y: 54
            text: "Trunk"
            checked: switchDoorTrunk
        }

        Switch {
            enabled: false
            id: switchGauge
            checked: speed
        }

        Item {
            id: __materialLibrary__
        }

        states: [
            State {
                name: "Home"

                PropertyChanges {
                    target: timeline
                    enabled: true
                }

                PropertyChanges {
                    target: timelineAnimation
                    running: true
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 320
                }
            },

            State {
                name: "leftdoorChange"

                PropertyChanges {
                    target: timeline
                    enabled: true
                }

                PropertyChanges {
                    target: timelineAnimation
                    running: true
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 240
                }
            },

            State {
                name: "rightdoorChange"

                PropertyChanges {
                    target: timeline
                    enabled: true
                }

                PropertyChanges {
                    target: timelineAnimation
                    running: true
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 120
                }
            },

            State {
                name: "trunkChange"

                PropertyChanges {
                    target: timeline
                    enabled: true
                }

                PropertyChanges {
                    target: timelineAnimation
                    running: true
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 180
                }

            },

            State {
                name: "Straight"

                PropertyChanges {
                    target: sceneCamera
                    x: 5.163
                    y: 313.123
                    eulerRotation.z: 0
                    eulerRotation.y: -0
                    eulerRotation.x: -5.69537
                    z: 1010.30231
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 180
                    x: 10
                }

                PropertyChanges {
                    target: road
                    opacity: 1

                }

                PropertyChanges {
                    target: lines
                    opacity: 1
                }
            },

            State {
                name: "Left"

                PropertyChanges {
                    target: sceneCamera
                    x: 5.163
                    y: 313.123
                    eulerRotation.z: 0
                    eulerRotation.y: -0
                    eulerRotation.x: -5.69537
                    z: 1010.30231
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 180
                    x:-250
                }

                PropertyChanges {
                    target: lines
                    opacity: 1

                }

                PropertyChanges {
                    target: road
                    opacity: 1

                }
            },

            State {
                name: "Right"

                PropertyChanges {
                    target: sceneCamera
                    x: 5.163
                    y: 313.123
                    eulerRotation.z: 0
                    eulerRotation.y: -0
                    eulerRotation.x: -5.69537
                    z: 1010.30231
                }

                PropertyChanges {
                    target: car3Dmodel
                    eulerRotation.y: 180
                    x: 270
                }


                PropertyChanges {
                    target: lines
                    opacity: 1

                }

                PropertyChanges {
                    target: road
                    opacity: 1

                }
            }
        ]

        transitions:[

            Transition {
                NumberAnimation {
                    properties: "eulerRotation.y, trunkAngle, rightDoorAngle, leftDoorAngle, x, y, z,  eulerRotation.z, eulerRotation.x, opacity"
                    // easing: Easing.InOutQuad
                    duration: 1000
                }
            }
        ]
    }
}

