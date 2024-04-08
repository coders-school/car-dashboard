import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    id: main
    width: 860
    height: 540

    property int buttonWidth: 100;
    property int buttonHeight: 50;

    Text {
        id: tempControlHeader
        y: tempControlDial.y - 40
        anchors.horizontalCenter: tempControlDial.horizontalCenter
        text: qsTr("Temperature")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 0
    }

    Dial {
        id: tempControlDial
        x: main.width / 2 - width / 2 - 250
        y: main.height / 2 - height / 2
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
        text: (tempControlDial.value).toFixed(1) + "ºC"
        font.pixelSize: 32
    }

    
    Text {
        id: fanControlHeader
        y: fanControlDial.y - 40
        anchors.horizontalCenter: fanControlDial.horizontalCenter
        text: qsTr("Fan")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 0
    }

    Dial {
        id: fanControlDial
        x: main.width / 2 - width / 2 + 250
        y: main.height / 2 - height / 2
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

    Row {
        x: main.width / 2 - width / 2
        y: main.height / 2 - height / 2
        spacing: 20

        Column {
            spacing: 20

            Button {
                id: acEnableButton
                width: buttonWidth
                height: buttonHeight
                highlighted: false
                text: "A/C"
                checked: airConditionController.enableAC
                onClicked: airConditionController.enableAC = !airConditionController.enableAC;
            }

            Button {
                id: heatingRearButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Rear")
                checked: airConditionController.heatingRear
                onClicked: airConditionController.heatingRear = !airConditionController.heatingRear;
            }

            Button {
                id: circulationButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Circulation")
                checked: airConditionController.circulation
                onClicked: airConditionController.circulation = !airConditionController.circulation;
            }

        }

        Column {
            spacing: 20

            Button {
                id: heatingFrontButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Front")
                checked: airConditionController.heatingFront
                onClicked: airConditionController.heatingFront = !airConditionController.heatingFront;
            }

            Button {
                id: faceAirflowButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Face")
                checked: airConditionController.faceAirflow
                onClicked: airConditionController.faceAirflow = !airConditionController.faceAirflow;
            }

            Button {
                id: feetAirflowButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Feet")
                checked: airConditionController.feetAirflow
                onClicked: airConditionController.feetAirflow = !airConditionController.feetAirflow;
            }

        }
    }

    Text {
        id: currentTemperatureText
        x: 688
        y: 50
        text: qsTr("20ºC")
        font.pixelSize: 32
    }

}
