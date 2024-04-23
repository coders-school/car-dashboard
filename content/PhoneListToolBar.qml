import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Dialogs


Item {

    ToolBar {
        id: toolBar
        width: parent.width
        height: 50
        font.pointSize: 18

        ToolButton {
            id: toolButton
            text: qsTr("Add contact")
            onClicked: {
                onClicked: popup.open()
            }
        }

        Dialog {
            id: popup
            x: 100
            y: 100
            width: 300
            height: 300
            standardButtons: DialogButtonBox.Ok | DialogButtonBox.Cancel

            onRejected: alarmDialog.close()
            onAccepted:
            {
                phoneView.append({"name" : nameTextField.text, "number" : phoneNumberField.text, "photo" : "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" })
                nameTextField.text = ""
                phoneNumberField.text = ""
            }

            ColumnLayout {
                anchors.fill: parent
                TextField {
                    id: nameTextField
                    placeholderText: qsTr("Enter name")
                    onTextEdited: text
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
