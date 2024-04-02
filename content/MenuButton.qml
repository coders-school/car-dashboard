import QtQuick 2.15
import QtQuick.Controls 2.15
Column {
    property int actualWindow: 0
    id:column
    width:100
    height: parent.height
    anchors.centerIn: parent

    Button {
        id: car3dButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        text: "3DCar"
        onClicked: {
           actualWindow = 0
        }
    }

    Button {
        id: acButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 175
        text: "A/C"
        onClicked: {
           actualWindow = 1
        }
    }

    Button {
        id: phonecallingButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 250
        text: "PhoneCalling"
        onClicked: {
           actualWindow = 2
        }
    }

    Button {
        id: musciplayerButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 325
        text: "MusicPlayer"
        onClicked: {
           actualWindow = 3
        }
    }

    Button {
        id: navigationButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 400
        text: "Navigation"
        onClicked: {
           actualWindow = 4
        }
    }
}

