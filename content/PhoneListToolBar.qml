import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Dialogs


Item {

    ToolBar {
        id: toolBar
        x: 0
        y: 235
        width: parent.width
        height: 50
        font.pointSize: 18

        RoundButton {
            id: toolButton
            x: 38
            y: 0
            width: 50
            height: 51
            onClicked: {
                onClicked: popup.open()
            }

            Image {
                id: add_contact
                anchors.fill: parent
                anchors.leftMargin: -11
                anchors.rightMargin: -11
                anchors.topMargin: -4
                anchors.bottomMargin: -4
                x: -15
                y: -3
                width: 78
                height: 54
                source: "images/add_contact.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Dialog {
            id: popup
            x: 130
            y: -100
            width: 230
            height: 270
            opacity: 0.8
            standardButtons: DialogButtonBox.Ok | DialogButtonBox.Cancel


            onRejected: popup.close()
            onAccepted:
            {
                phoneView.append({"name" : nameTextField.text, "number" : phoneNumberField.text, "photo" : "images/user.png" })
                nameTextField.text = ""
                phoneNumberField.text = ""
            }
            background: Rectangle {
                radius: 8
            }

            ColumnLayout {
                anchors.fill: parent
                TextField {
                    id: nameTextField
                    placeholderText: qsTr("Enter name")
                    onTextEdited: text
                    anchors.verticalCenterOffset: 100

                }
                TextField {
                    id: phoneNumberField
                    placeholderText: qsTr("Enter phone no.")
                    onTextEdited: text

                }
            }
        }
    }
}
