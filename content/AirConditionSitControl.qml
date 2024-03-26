import QtQuick 2.15
import QtQuick.Controls 2.15


Item {

    Button {
        id: acEnableButton
        x: 46
        y: 84
        width: 83
        height: 52
        highlighted: false
        checkable: true
        text: "A/C"
    }


    Text {
        id: tempControlHeader
        y: 265
        anchors.horizontalCenter: tempControlDial.horizontalCenter
        text: qsTr("Temperature")
        font.pixelSize: 20
    }

    Dial {
        id: tempControlDial
        x: 65
        y: 300
        value: 25
        to: 32
        from: 18
        wheelEnabled: false
        snapMode: Dial.SnapAlways
        stepSize: 0.5
    }

    Text {
        id: tempControlValueText
        anchors.horizontalCenter: tempControlDial.horizontalCenter
        anchors.verticalCenter: tempControlDial.verticalCenter
        text: (tempControlDial.value).toFixed(1) + " C"
        font.pixelSize: 32
    }

    
    Text {
        id: fanControlHeader
        y: 265
        anchors.horizontalCenter: fanControlDial.horizontalCenter
        text: qsTr("Fan")
        font.pixelSize: 20
    }

    Dial {
        id: fanControlDial
        x: 279
        y: 300
        value: 0
        to: 100
        wheelEnabled: false
        stepSize: 20
        snapMode: Dial.SnapAlways
    }

    Text {
        id: fanControlValueText
        text: fanControlDial.value === 0 ? "AUTO" : ((fanControlDial.value).toFixed(0) + "%")
        anchors.horizontalCenter: fanControlDial.horizontalCenter
        anchors.verticalCenter: fanControlDial.verticalCenter
        font.pixelSize: 32
    }


    Button {
        id: heatingFrontButton
        x: 46
        y: 154
        checkable: true
        text: qsTr("Front")
    }
    
    Button {
        id: feetAirflowButton
        x: 295
        y: 154
        width: 110
        height: 52
        text: qsTr("Feet")
        checkable: true
    }

    Button {
        id: faceAirflowButton
        x: 162
        y: 154
        width: 110
        height: 52
        text: qsTr("Face")
        checkable: true
    }


    Button {
        id: heatingRearButton
        x: 303
        y: 84
        width: 93
        checkable: true
        text: qsTr("Rear")
    }

    Button {
        id: circulationButton
        x: 155
        y: 84
        width: 110
        height: 52
        checkable: true
        text: qsTr("Circulation")
    }


    Text {
        id: currentTemperatureText
        x: 536
        y: 92
        text: qsTr("20 C")
        font.pixelSize: 32
    }

}
