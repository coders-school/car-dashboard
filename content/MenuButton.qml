import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    property int actualWindow: 0
    id:column
    width:100
    topPadding: 50
    height: parent.height
    anchors.centerIn: parent
    spacing: 50

    Button {
        id: car3dButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "3DCar"
        onClicked: {
            actualWindow = 0
            carTurn.focus = true
        }
    }

    Button {
        id: acButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "A/C"
        onClicked: {
            actualWindow = 1
            carTurn.focus = true
        }
    }

    Button {
        id: phonecallingButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "PhoneCalling"
        onClicked: {
            actualWindow = 2
            carTurn.focus = true
        }
    }

    Button {
        id: musciplayerButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "MusicPlayer"
        onClicked: {
            actualWindow = 3
            carTurn.focus = true
        }
    }

    Button {
        id: navigationButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Navigation"
        onClicked: {
            actualWindow = 4
            carTurn.focus = true
        }
    }
}

