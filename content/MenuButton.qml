import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    property int actualWindow: 0
    id:row
    width:100
    // height: parent.height
    // anchors.centerIn: parent
    topPadding: 30
    spacing: 20

    Button {
        id: car3dButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "3DCar"
        onClicked: {
            actualWindow = 0
        }
    }

    // Button {
    //     id: acButton
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     text: "A/C"
    //     onClicked: {
    //         actualWindow = 1
    //     }
    // }

    Button {
        id: phonecallingButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "PhoneCalling"
        onClicked: {
            actualWindow = 1
        }
    }

    Button {
        id: musciplayerButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "MusicPlayer"
        onClicked: {
            actualWindow = 2
        }
    }

    Button {
        id: navigationButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Navigation"
        onClicked: {
            actualWindow = 3
        }
    }
}

