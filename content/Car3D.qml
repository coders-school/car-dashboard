import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 6.4
import Quick3DAssets.Supra

Item {

    anchors {
        top: parent.top
        right: parent.right
    }

    width: parent.width * 0.47
    height: parent.height

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
                x: 0
                y: 111.084
                eulerRotation.z: -0
                eulerRotation.y: 0
                eulerRotation.x: -19.561
                z: 310.28943
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 0
                y: 28.031
                eulerRotation.z: -0
                eulerRotation.y: 0
                eulerRotation.x: -6.1599
                z: 344.88174
            }

            Supra {
                id: car3Dmodel
                x: 25.364
                y: -90.867
                eulerRotation.z: -0.00001
                eulerRotation.y: -33.3971
                eulerRotation.x: -0
                z: -53.82957
                scale: Qt.vector3d(80, 80 , 80)
            }


            }

            NumberAnimation {
                id: rotationCar
                target: car3Dmodel
                property: "eulerRotation.y"
                from: car3Dmodel.y
                to: car3Dmodel.y + 360
                loops: Animation.Infinite
                duration: 60000
                running: true
            }

            NumberAnimation {
                id: trunkAnim
                target: car3Dmodel
                property: "trunkAngle"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
                from: 0
                to: 50
                duration: 1000
                // running: true
                // loops: Animation.Infinite

            }

            NumberAnimation {
                id: leftDoorAnim
                target: car3Dmodel
                property: "leftDoorAngle"   //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
                from: 0
                to: -50
                duration: 1000
                // running: true
                // loops: Animation.Infinite

            }

            NumberAnimation {
                id: rightDoorAnim
                target: car3Dmodel
                property: "rightDoorAngle"  //look in folder asset_imports/Quick3DAssets/Supra/Supra.qml
                from: 0
                to: 50
                duration: 1000
                // running: true
                // loops: Animation.Infinite

            }
        }

    Button{
        id:switchLefttdoor
        text:"Left Door"
        x: 200
        y: 100
        onClicked: {
            leftDoorAnim.running = true
            if(leftDoorAnim.to == -50) {
                leftDoorAnim.from = -50
                leftDoorAnim.to = 0
            } else {
                leftDoorAnim.from = 0
                leftDoorAnim.to = -50
            }
        }
    }

    Button{
        id:switchTrunk
        text:"Trunk"
        x: 400
        y: 100
        onClicked: {
            trunkAnim.running = true
            if(trunkAnim.to == 50) {
                trunkAnim.from = 50
                trunkAnim.to = 0
            } else {
                trunkAnim.from = 0
                trunkAnim.to = 50
            }
        }
    }

    Button{
        id:switchRightdoor
        text:"Right Door"
        x: 600
        y: 100
        onClicked: {
            rightDoorAnim.running = true
            if(rightDoorAnim.to == 50) {
                rightDoorAnim.from = 50
                rightDoorAnim.to = 0
            } else {
                rightDoorAnim.from = 0
                rightDoorAnim.to = 50
            }
        }
    }


    Item {
        id: __materialLibrary__
    }

}
