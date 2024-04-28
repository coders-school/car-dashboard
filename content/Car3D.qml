import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 6.4
import Quick3DAssets.Supra
import Quick3DAssets.Road_Bend
import QtQuick.Timeline 1.0

Item {    
    id: car3DClass
    property bool switchDoorRight: false
    property bool switchDoorLeft: false
    property bool switchDoorTrunk: false
    property string color: "grey"

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
                x: -375.318
                y: 904.977
                brightness: 1.5
                eulerRotation.z: 8.13115
                eulerRotation.y: -22.71501
                eulerRotation.x: -42.28757
                z: 781.37354
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
                x: 2.737
                y: -83.891
                eulerRotation.z: -0.00001
                eulerRotation.y: 320
                eulerRotation.x: -0
                z: -56.1745
                scale: Qt.vector3d(80, 80, 80)

                Node{
                    id:carLights
                    visible: false

                    PointLight {
                        x: 0.716
                        y: 0.709
                        constantFade: 0
                        quadraticFade: 10
                        z: 2.02961
                        brightness: 1
                        eulerRotation.z: 105.31049
                        eulerRotation.y: -2.15682
                        eulerRotation.x: 0.59078
                    }

                    SpotLight {
                        x: 0.638
                        y: 0.871
                        quadraticFade: 1.02866
                        coneAngle: 48
                        innerConeAngle: 48
                        eulerRotation.z: -0.00002
                        eulerRotation.y: -157.59087
                        eulerRotation.x: -8.89387
                        z: 1.83804
                        brightness: 100
                    }

                    PointLight {
                        x: -0.646
                        y: 0.693
                        constantFade: 0
                        quadraticFade: 10
                        z: 2.04238
                        brightness: 1
                        eulerRotation.z: 105.31049
                        eulerRotation.y: -2.15682
                        eulerRotation.x: 0.59078
                    }

                    SpotLight {
                        x: -0.65
                        y: 0.971
                        quadraticFade: 1.02866
                        coneAngle: 48
                        innerConeAngle: 48
                        eulerRotation.z: 4.28555
                        eulerRotation.y: 173.505
                        eulerRotation.x: -7.80056
                        z: 1.67627
                        brightness: 100
                    }

                    PointLight {
                        x: 0.673
                        y: 0.825
                        constantFade: 0
                        quadraticFade: 10
                        z: -2.20611
                        brightness: 0.3
                        eulerRotation.z: 105.31049
                        eulerRotation.y: -2.15682
                        eulerRotation.x: 0.59078
                        color:"red"
                    }

                    PointLight {
                        x: -0.694
                        y: 0.806
                        constantFade: 0
                        quadraticFade: 10
                        z: -2.17461
                        brightness: 0.3
                        eulerRotation.z: 105.31049
                        eulerRotation.y: -2.15682
                        eulerRotation.x: 0.59078
                        color:"red"
                    }
                }

                PointLight {
                    id:insideLight1
                    visible: false
                    x: -0
                    y: 1.056
                    constantFade: 0
                    quadraticFade: 10
                    z: -0.42772
                    brightness: 1
                    eulerRotation.z: 105.31049
                    eulerRotation.y: -2.15682
                    eulerRotation.x: 0.59078
                }

            }
        }

        Model {
            id: road
            x: 7.172
            y: -95.309
            source: "#Cube"
            z: -5820.31836
            opacity: 0
            scale: Qt.vector3d(9.5, 0.01, 120)
            materials: PrincipledMaterial {
                baseColor: "black"
            }
        }

        Model {
            id: leftline
            x: -430.172
            y: -90.867
            source: "#Cube"
            z: -5820.31836
            opacity: 0
            scale: Qt.vector3d(0.08, 0.01, 120)
            materials: PrincipledMaterial {
                baseColor: "white"
            }
        }

        Model {
            id: rightline
            x: 450.172
            y: -90.867
            source: "#Cube"
            z: -5820.31836
            opacity: 0
            scale: Qt.vector3d(0.08, 0.01, 120)
            materials: PrincipledMaterial {
                baseColor: "white"
            }
        }

        Road_Bend  {
            id: midlleline1
            opacity: 0
            x: -39.828
            y: -90.865
            eulerRotation.z: 0
            eulerRotation.x: -0.00001
            scale.z: 100
            z: 167.32294
            scale.x: 80
            eulerRotation.y: -270
            mat: lanelineMaterial
        }

        Road_Bend  {
            id: midlleline2
            opacity: 0
            x: -349.9
            y: -90.865
            eulerRotation.z: 0
            eulerRotation.x: -0.00001
            scale.z: 100
            z: 167.32301
            scale.x: 80
            eulerRotation.y: -270
            mat: lanelineMaterial
        }

        NumberAnimation {
            id: dayAnim
            target: directionalLight
            property: "brightness"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
            from: 0.2
            to: 1.5
            duration: 1000
        }

        NumberAnimation {
            id: nightAnim
            target: directionalLight
            property: "brightness"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
            from: 1.5
            to: 0.2
            duration: 1000
        }

        NumberAnimation {
            id: trunkAnim
            target: car3Dmodel
            property: "trunkAngle"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
            from: 0
            to: 35
            duration: 500
        }

        NumberAnimation {
            id: leftDoorAnim
            target: car3Dmodel
            property: "leftDoorAngle"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
            from: 0
            to: -50
            duration: 600
        }

        NumberAnimation {
            id: rightDoorAnim
            target: car3Dmodel
            property: "rightDoorAngle"  //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
            from: 0
            to: 50
            duration: 600
        }
    }   

    NumberAnimation {
        id:linesAnimation
        target:lanelines
        property: "positionV"
        from: 0
        to: 1
        duration: 1000
        loops: -1
    }

    RoundButton {
        id:switchLefttdoor
        x: 126
        y: 262
        width: 69
        height: 57

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                leftdoor.scale = 1.1
            }
            onExited: {
                leftdoor.scale = 1
            }
            onClicked: {
                car3DClass.state = "leftdoorChange"
                leftDoorAnim.running = true
                if(switchDoorLeft == false) {
                    leftDoorAnim.from = -50
                    leftDoorAnim.to = 0
                    switchDoorLeft = true
                    insideLight1.visible = true
                    leftdoor.color = "darkgreen"

                } else if (switchDoorLeft == true) {
                    leftDoorAnim.from = 0
                    leftDoorAnim.to = -50
                    switchDoorLeft = false
                    leftdoor.color = "#d2d2d2"
                    // insideLight1.visible = false
                    if(switchDoorRight == false && switchDoorTrunk == false) {
                        insideLight1.visible = false
                    }
                    if(switchDoorRight == false && switchDoorTrunk == false && switchDoorLeft == false) {
                        car3DClass.state = "Home"
                    }
                }
            }
        }

        background: Rectangle {
            color: "transparent"
        }

        ColorImage {
            id: leftdoor
            x: 18
            y: -6
            width: 56
            height: 50
            source: "images/leftdoor.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            color: "#d2d2d2"
        }
    }

    RoundButton {
        id:switchTrunk
        x: 422
        y: 453
        width: 69
        height: 57

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                trunk.scale = 1.1
            }
            onExited: {
                trunk.scale = 1
            }
            onClicked: {
                car3DClass.state = "trunkChange"
                trunkAnim.running = true
                if(switchDoorTrunk == true)
                {
                    trunkAnim.from = 0
                    trunkAnim.to = 30
                    switchDoorTrunk = false
                    trunk.color = "#bbbbbb"
                    // insideLight1.visible = false
                    if(switchDoorRight == false && switchDoorLeft == false) {
                        insideLight1.visible = false
                    }
                    if(switchDoorRight == false && switchDoorTrunk == false && switchDoorLeft == false) {
                        car3DClass.state = "Home"
                    }

                } else if (switchDoorTrunk == false) {
                    trunkAnim.from = 30
                    trunkAnim.to = 0
                    switchDoorTrunk = true
                    trunk.color = "darkgreen"
                    insideLight1.visible = true
                }
            }
        }

        background: Rectangle {
            color: "transparent"
        }

        ColorImage {
            id: trunk
            x: 18
            y: -6
            width: 56
            height: 46
            source: "images/trunk.png"
            anchors.verticalCenterOffset: -1
            anchors.horizontalCenterOffset: 6
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            color: "#bbbbbb"
        }       
    }

    RoundButton {
        id:switchRightdoor
        x: 716
        y: 262
        width: 69
        height: 57

        MouseArea {            
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                rightdoor.scale = 1.1
            }
            onExited: {
                rightdoor.scale = 1
            }
            onClicked: {
                car3DClass.state = "rightdoorChange"
                rightDoorAnim.running = true
                if(switchDoorRight == true) {
                    rightDoorAnim.from = 0
                    rightDoorAnim.to = 50
                    switchDoorRight = false
                    rightdoor.color = "#d2d2d2"
                    // insideLight1.visible = false
                    if(switchDoorLeft == false && switchDoorTrunk == false) {
                        insideLight1.visible = false
                    }
                    if(switchDoorRight == false && switchDoorTrunk == false && switchDoorLeft == false) {
                        car3DClass.state = "Home"
                    }

                } else if (switchDoorRight == false) {
                    rightDoorAnim.from = 50
                    rightDoorAnim.to = 0
                    switchDoorRight = true
                    rightdoor.color = "darkgreen"
                    insideLight1.visible = true
                }
            }
        }



        background: Rectangle {
            color: "transparent"
        }

        ColorImage {
            id: rightdoor
            x: 18
            y: -6
            width: 56
            height: 50
            source: "images/rightdoor.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            color: "#d2d2d2"
        }
    }

    Button {
        id:buttonDay
        x: 131
        y: 0
        onClicked: {
            dayAnim.running = true            
        }
    }

    Button {
        id:buttonNight
        x: 200
        y: 0
        onClicked: {
            nightAnim.running = true
        }
    }

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
        id: switchdaynight
        checked: if(daynightswitch) {
                     buttonNight.clicked()
                     carLights.visible = true
                     true
                 } else {
                     buttonDay.clicked()
                     carLights.visible = false                   
                     false
                 }
    }

    RoundButton{
        id:switchDrive
        x: 422
        y: 113
        width: 69
        height: 57
        enabled: false
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            // onEntered: {
            //     drive.scale = 1.1
            // }

            // onExited: {
            //     drive.scale = 1
            // }

            onClicked: {
                car3DClass.state = "Straight"
            }
        }

        ColorImage {
            id: drive
            x: 18
            y: -6
            width: 46
            height: 45
            source: "images/steering-wheel.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            color: "#e1e1e1"
        }

        background: Rectangle {
            color: "transparent"
        }
    }

    Item {
        id: __materialLibrary__

        DefaultMaterial {
            id: lanelineMaterial
            diffuseColor: "#ffffff"
            diffuseMap: lanelines

            Texture {
                id: lanelines
                source: "images/lanelines.png"
                tilingModeHorizontal: Texture.Repeat
                tilingModeVertical: Texture.Repeat
            }

            objectName: "lanelineMaterial"
            depthDrawMode: Material.NeverDepthDraw
        }

    }



    // Item {
    //     focus: true
    //     Keys.onPressed: (event)=> { if (event.key == Qt.Key_Enter) state = 'Straight'; }
    // }

    states: [

        State {
            name: "Home"

            PropertyChanges {
                target: car3Dmodel
                eulerRotation.y: 320
            }
        },

        State {
            name: "leftdoorChange"

            PropertyChanges {
                target: car3Dmodel
                eulerRotation.y: 240
            }
        },

        State {
            name: "rightdoorChange"

            PropertyChanges {
                target: car3Dmodel
                eulerRotation.y: 120
            }
        },

        State {
            name: "trunkChange"

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
            }

            PropertyChanges {
                target: leftline
                opacity: 0.8

            }

            PropertyChanges {
                target: midlleline1
                opacity: 0.8
            }

            PropertyChanges {
                target: midlleline2
                opacity: 0.8

            }

            PropertyChanges {
                target: rightline
                opacity: 0.8
            }

            PropertyChanges {
                target: road
                opacity: 1
            }

            PropertyChanges {
                target: linesAnimation
                running: true
            }

            PropertyChanges {
                target: drive
                color: "darkgreen"
            }

            PropertyChanges {
                target: road
                opacity: 1
            }

            PropertyChanges {
                target: linesAnimation
                running: true
            }

            PropertyChanges {
                target: drive
                color: "darkgreen"
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
                target: leftline
                opacity: 0.8

            }

            PropertyChanges {
                target: midlleline1
                opacity: 0.8

            }

            PropertyChanges {
                target: midlleline2
                opacity: 0.8

            }

            PropertyChanges {
                target: rightline
                opacity: 0.8

            }

            PropertyChanges {
                target: road
                opacity: 1
            }

            PropertyChanges {
                target: linesAnimation
                running: true
            }

            PropertyChanges {
                target: drive
                color: "darkgreen"
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
                target: leftline
                opacity: 0.8

            }

            PropertyChanges {
                target: midlleline1
                opacity: 0.8

            }

            PropertyChanges {
                target: midlleline2
                opacity: 0.8

            }

            PropertyChanges {
                target: rightline
                opacity: 0.8

            }

            PropertyChanges {
                target: road
                opacity: 1
            }

            PropertyChanges {
                target: linesAnimation
                running: true
            }

            PropertyChanges {
                target: drive
                color: "darkgreen"
            }
        },

        State {
            name: "Night"
            PropertyChanges {
                target: directionalLight
                brightness: 0.5
            }

            PropertyChanges {
                target: drive
                color: "darkgreen"
            }
        }
    ]

    transitions:[

        Transition {            
            NumberAnimation {
                properties: "eulerRotation.y, x, y, z,  eulerRotation.z, eulerRotation.x, opacity, brightness"
                duration: 1000
            }
        }
    ]
}
