

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.4
import QtQuick.Controls 6.4
import QtQuick3D 6.4
import CarDashboard

Rectangle {
    // ui.qml it use only to make backround of yout project not LOGIC (will see, if gona by problematic we will use normal qml file)
    width: Constants.width
    height: Constants.height / 2 //Divide by two to change size of window to look like in the car

    color: Constants.backgroundColor

    Item {
        id: __materialLibrary__
    }

    //    View3D {
    //        id: view3D
    //        anchors.fill: parent

    //        environment: sceneEnvironment

    //        SceneEnvironment {
    //            id: sceneEnvironment
    //            antialiasingMode: SceneEnvironment.MSAA
    //            antialiasingQuality: SceneEnvironment.High
    //        }

    //        Node {
    //            id: scene
    //            DirectionalLight {
    //                id: directionalLight
    //            }

    //            PerspectiveCamera {
    //                id: sceneCamera
    //                z: 350
    //            }

    //            Model {
    //                id: cubeModel
    //                eulerRotation.y: 45
    //                eulerRotation.x: 30
    //                materials: defaultMaterial
    //                source: "#Cube"
    //            }
    //        }
    //    }

    //    Item {
    //        id: __materialLibrary__
    //        DefaultMaterial {
    //            id: defaultMaterial
    //            objectName: "Default Material"
    //            diffuseColor: "#4aee45"
    //        }
    //    }

    //    Text {
    //        text: qsTr("Hello CarDashboard")
    //        anchors.top: parent.top
    //        anchors.horizontalCenter: parent.horizontalCenter
    //        anchors.topMargin: 100
    //        font.family: Constants.font.family
    //    }
}
