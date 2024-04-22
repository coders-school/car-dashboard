import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: parent.width
        height: 50

        ToolButton {
            id: toolButton
            text: qsTr("Add contact")
            font.pointSize: 24
            onClicked: {
                phoneView.insert(3,{"name" : "Kate Kowalsky", "number" : "543 4579", "photo" : "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"})
             }
        }
    }
}
