import QtQuick 2.15
import QtQuick.Controls 2.15


Column {
    property int actualWindow: 0
    id:column
    width:100
    topPadding: 30
    height: parent.height
    anchors.centerIn: parent
    spacing: 50

    RoundButton {
        id: car3dButton
        width: 60
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter        
        onClicked: {
            actualWindow = 0
            carTurn.focus = true
            ac.color = "#cfcfcf"
            car.color = "darkgreen"
            phonecalling.color = "#cfcfcf"
            musicplayer.color = "#cfcfcf"
            navigation.color = "#cfcfcf"
        }


        ColorImage {
            id: car
            x: -22
            y: -8
            width: 104
            height: 65
            source: "images/car.png"
            fillMode: Image.PreserveAspectFit
            color: "darkgreen"
        }

        background: Rectangle {
            color: "transparent"
        }
    }

    Button {
        id: acButton
        anchors.horizontalCenter: parent.horizontalCenter        
        width: 60
        height: 60
        onClicked: {
            actualWindow = 1
            carTurn.focus = true
            car.color = "#cfcfcf"
            ac.color = "darkgreen"
            phonecalling.color = "#cfcfcf"
            musicplayer.color = "#cfcfcf"
            navigation.color = "#cfcfcf"
        }

        ColorImage {
            id: ac
            x: -21
            y: -9
            width: 104
            height: 70
            source: "images/air-conditioner.png"
            fillMode: Image.PreserveAspectFit
            color: "#cfcfcf"
        }

        background: Rectangle {
            color: "transparent"
        }
    }

    Button {
        id: phonecallingButton
        anchors.horizontalCenter: parent.horizontalCenter
        width: 60
        height: 50
        onClicked: {
            actualWindow = 2
            carTurn.focus = true
            car.color = "#cfcfcf"
            ac.color = "#cfcfcf"
            phonecalling.color = "darkgreen"
            musicplayer.color = "#cfcfcf"
            navigation.color = "#cfcfcf"
        }

        ColorImage {
            id: phonecalling
            x: -19
            y: -10
            width: 100
            height: 60
            source: "images/call.png"
            fillMode: Image.PreserveAspectFit
            color: "#cfcfcf"
        }

        background: Rectangle {
            color: "transparent"
        }
    }

    Button {
        id: musciplayerButton
        anchors.horizontalCenter: parent.horizontalCenter
        width: 60
        height: 50
        onClicked: {
            actualWindow = 3
            carTurn.focus = true
            car.color = "#cfcfcf"
            ac.color = "#cfcfcf"
            phonecalling.color = "#cfcfcf"
            musicplayer.color = "darkgreen"
            navigation.color = "#cfcfcf"

        }

        ColorImage {
            id: musicplayer
            x: -45
            y: -21
            width: 145
            height: 87
            source: "images/play-button.png"
            fillMode: Image.PreserveAspectFit
            color: "#cfcfcf"
        }

        background: Rectangle {
            color: "transparent"
        }
    }

    Button {
        id: navigationButton
        anchors.horizontalCenter: parent.horizontalCenter
        width: 60
        height: 50
        onClicked: {
            actualWindow = 4
            carTurn.focus = true
            car.color = "#cfcfcf"
            ac.color = "#cfcfcf"
            phonecalling.color = "#cfcfcf"
            musicplayer.color = "#cfcfcf"
            navigation.color = "darkgreen"
        }

        ColorImage {
            id: navigation
            x: -27
            y: -11
            width: 113
            height: 70
            source: "images/compass.png"
            fillMode: Image.PreserveAspectFit
            color: "#cfcfcf"
        }

        background: Rectangle {
            color: "transparent"
        }
    }
}

