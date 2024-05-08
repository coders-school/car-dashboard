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
        anchors.leftMargin: 135
        anchors.rightMargin: 23
        visible: true
        anchors.topMargin: 134
        anchors.bottomMargin: 99
        anchors.verticalCenterOffset: 91
        anchors.horizontalCenterOffset: 134
        anchors.centerIn: parent
        spacing: 1
        model: ContactModel { id: phoneView }
        delegate: ContactDelegate { id: contactDelegate}
       }
}
