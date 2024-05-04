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
        color: "#d2d2d2"
        font.pixelSize: 22
        anchors.horizontalCenterOffset: 0
    }

    Dial {
        id: tempControlDial
        x: main.width / 2 - width / 2 - 250
        y: main.height / 1.9 - height / 2
        width: 200
        height:200
        to: 24
        from: 14
        value: airConditionController.aSetTemp
        wheelEnabled: false
        snapMode: Dial.SnapAlways
        stepSize: 0.5

        onMoved: {
            airConditionController.aSetTemp = this.value;
        }

        background: Image {
            id: dialTempBackground
            source: "images/airCondition/dialTempBackground.svg"
            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
        }

        handle: Image {
            id: dialTempHandle
            x: tempControlDial.background.x + tempControlDial.width / 2 - width / 2
            y: tempControlDial.background.y + tempControlDial.height / 2 - height / 2
            source: "images/airCondition/dialHandle.svg"
            fillMode: Image.PreserveAspectFit
            width: 16
            height: 16
            property int dialRadius: 76
            transform: [
                Translate {
                    property double handleAngle: (tempControlDial.angle - 90) * Math.PI / 180
                    x: Math.cos(handleAngle) * dialTempHandle.dialRadius;
                    y: Math.sin(handleAngle) * dialTempHandle.dialRadius;
                }
            ]
        }

        Text {
            id: tempControlValueText
            color: "#ffffff"
            anchors.horizontalCenter: tempControlDial.horizontalCenter
            anchors.verticalCenter: tempControlDial.verticalCenter
            text: (tempControlDial.value).toFixed(1) + "ºC"
            font.pixelSize: 32
        }
    }


    Text {
        id: fanControlHeader
        y: fanControlDial.y - 40
        anchors.horizontalCenter: fanControlDial.horizontalCenter
        text: qsTr("Fan")
        color: "#d2d2d2"
        font.pixelSize: 22
        anchors.horizontalCenterOffset: 0
    }

    Dial {
        id: fanControlDial
        x: main.width / 2 - width / 2 + 250
        y: main.height / 1.9 - height / 2
        value: airConditionController.aSetFan
        from: 0
        to: 5
        wheelEnabled: false
        stepSize: 1
        snapMode: Dial.SnapAlways

        onMoved: {
            airConditionController.aSetFan = this.value;
        }
        width: 200
        height:200

        background: Image {
            id: dialFanBackground
            source: "images/airCondition/dialFanBackground.svg"
            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
        }

        handle: Image {
            id: dialFanHandle
            x: fanControlDial.background.x + fanControlDial.width / 2 - width / 2
            y: fanControlDial.background.y + fanControlDial.height / 2 - height / 2
            source: "images/airCondition/dialHandle.svg"
            fillMode: Image.PreserveAspectFit
            width: 16
            height: 16
            property int dialRadius: 76
            transform: [
                Translate {
                    property double handleAngle: (fanControlDial.angle - 90) * Math.PI / 180
                    x: Math.cos(handleAngle) * dialFanHandle.dialRadius;
                    y: Math.sin(handleAngle) * dialFanHandle.dialRadius;
                }
            ]
        }

        Text {
            id: fanControlValueText
            color: "#ffffff"
            text: fanControlDial.value === 0 ? "AUTO" : ((fanControlDial.value).toFixed(0))
            anchors.horizontalCenter: fanControlDial.horizontalCenter
            anchors.verticalCenter: fanControlDial.verticalCenter
            font.pixelSize: text === "AUTO" ? 32 : 64
        }
    }


    Row {
        x: main.width / 2 - width / 2
        y: main.height / 2 - height / 2
        spacing: 20

        Column {
            spacing: 20

            RoundButton {
                id: acEnableButton
                width: buttonWidth
                height: buttonHeight
                highlighted: false
                text: "A/C"
                font.pixelSize: 32
                checked: airConditionController.enableAC
                onClicked: airConditionController.enableAC = !airConditionController.enableAC;
                contentItem: Text {
                    text: acEnableButton.text
                    font: acEnableButton.font
                    opacity: enabled ? 1.0 : 0.3
                    color: acEnableButton.checked ? "green" : "black"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }

            RoundButton {
                id: heatingRearButton
                width: buttonWidth
                height: buttonHeight
                checked: airConditionController.heatingRear
                onClicked: airConditionController.heatingRear = !airConditionController.heatingRear;

                display: AbstractButton.IconOnly
                icon  {
                    source: "images/airCondition/heatingRear.svg"
                    color: checked ? "green" : "black"
                    height: parent.height
                }
            }

            RoundButton {
                id: circulationButton
                width: buttonWidth
                height: buttonHeight
                checked: airConditionController.circulation
                onClicked: airConditionController.circulation = !airConditionController.circulation;

                display: AbstractButton.IconOnly
                icon  {
                    source: "images/airCondition/internalCirculation.svg"
                    color: checked ? "green" : "black"
                    height: parent.height
                }
            }

        }

        Column {
            spacing: 20

            RoundButton {
                id: heatingFrontButton
                width: buttonWidth
                height: buttonHeight
                checked: airConditionController.heatingFront
                onClicked: airConditionController.heatingFront = !airConditionController.heatingFront;

                display: AbstractButton.IconOnly
                icon  {
                    source: "images/airCondition/heatingFront.svg"
                    color: checked ? "green" : "black"
                    height: parent.height
                }
            }

            RoundButton {
                id: faceAirflowButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Face")
                checked: airConditionController.faceAirflow
                onClicked: airConditionController.faceAirflow = !airConditionController.faceAirflow;

                display: AbstractButton.IconOnly
                icon  {
                    source: "images/airCondition/head.svg"
                    color: checked ? "green" : "black"
                    height: parent.height
                }
            }

            RoundButton {
                id: feetAirflowButton
                width: buttonWidth
                height: buttonHeight
                text: qsTr("Feet")
                checked: airConditionController.feetAirflow
                onClicked: airConditionController.feetAirflow = !airConditionController.feetAirflow;

                display: AbstractButton.IconOnly
                icon  {
                    source: "images/airCondition/foot.svg"
                    color: checked ? "green" : "black"
                    height: parent.height
                }
            }

        }
    }

    Text {
        id: currentTemperatureText
        x: 373
        y: 74
        text: (airConditionController.currentTemp).toFixed(1) + qsTr("ºC")
        font.pixelSize: 50
        color:"#d2d2d2"
    }

}
