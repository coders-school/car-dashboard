import QtQuick 2.15
import QtQuick.Controls 2.15

MainScreeen {

    Button {
        id: car3dButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        text: "3DCar"
    }

    Button {
        id: acButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 175
        text: "A/C"
    }

    Button {
        id: phonecallingButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 250
        text: "PhoneCalling"
    }

    Button {
        id: musciplayerButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 325
        text: "MusicPlayer"
    }

    Button {
        id: navigationButton
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 400
        text: "Navigation"
    }
}
