import QtQuick 2.15
import QtQuick.Controls 2.15

Item {

    Rectangle {
        id:rectangle
        width: 300
        height: 300
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "green"

        Button {
            text:"ClickHere!!"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                rotateRectangle.running = true
                rotateRectangle.paused = !rotateRectangle.paused
            }
        }
    }

    NumberAnimation {
        id: rotateRectangle
        target: rectangle
        property: "rotation"
        from: 0
        to: 360
        loops: Animation.Infinite
        duration: 8000
    }

    // Button {
    //     text:"ClickHere!!"
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     anchors.verticalCenter: parent.verticalCenter
    //     onClicked: {
    //         rotateRectangle.running = true
    //         rotateRectangle.paused = !rotateRectangle.paused
    //     }
    // }
}


