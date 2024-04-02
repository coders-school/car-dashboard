/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id:carGaugeTest

    Image {
        anchors.leftMargin: 83
        anchors.rightMargin: -24
        anchors.topMargin: 102
        anchors.bottomMargin: 0
        id: wskazniki_PNG
        x: 64
        y: 74
        width: 690
        height: 406
        source: "images/Wskazniki_PNG.png"
        fillMode: Image.PreserveAspectFit
    }
}
