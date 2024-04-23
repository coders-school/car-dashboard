import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Item {
    anchors.leftMargin: 20
    PhoneListToolBar {
    }

    ListView {
        id: contactListView
        anchors.fill: parent
        visible: true
        anchors.topMargin: 50
        spacing: 1
        model: ContactModel { id: phoneView }
        delegate: ContactDelegate { id: contactDelegate}
       }
}
