/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 200
    height: 50

    Image {
        id: left1
        x: 8
        y: 14
        source: "Icons/LightIcons/Left.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: highBeam_active
        x: 63
        y: 19
        source: "Icons/LightIcons/HighBeam_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: right_active
        x: 144
        y: 14
        source: "Icons/LightIcons/Right_active.svg"
        fillMode: Image.PreserveAspectFit
    }
}
