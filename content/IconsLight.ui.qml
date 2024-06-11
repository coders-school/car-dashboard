/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Shapes 1.15

RowLayout {
    id: lightIconsRow
    width: 150
    height: 50


    property bool highBeam_active: false
    property bool left_active: false
    property bool right_active: false


    Repeater {
        model: [
        { activePath: "Icons/LightIcons/Left.svg", inactivePath: "Icons/LightIcons/Left_NotActive.svg", isActive: left_active},
        { activePath: "Icons/LightIcons/HighBeam_active.svg", inactivePath: "Icons/LightIcons/HighBeam_NotActive.svg", isActive: highBeam_active},
        { activePath: "Icons/LightIcons/Right_active.svg", inactivePath: "Icons/LightIcons/Right_NotActive.svg", isActive: right_active}
        ]

        delegate: RowLayout {
            width: 100
            height: 100
            x: modelData.x
            y: modelData.y

            // For active images
            Image {
                Layout.alignment: parent
                source: modelData.activePath
                width: 50
                height: 50
                visible: modelData.isActive
            }

            //for not active images
            Image {
                Layout.alignment: parent
                source: modelData.inactivePath
                width: 50
                height: 50
                visible: !modelData.isActive

            }
        }
    }
}


