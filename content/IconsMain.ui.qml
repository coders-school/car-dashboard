/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RowLayout {
    id: iso_Icons
    width: 800
    height: 50

    property bool checkEngine_active: false
    property bool charging_active: false
    property bool abs_active: false
    property bool cruiseControl_active: false
    property bool doorOpen_active: false
    property bool esp_active: false
    property bool imobilizer_active: false
    property bool parkingBrake_active: false
    property bool seatBelt_active: false
    property bool sterringFault_active: false
    property bool antiFog_active: false

    Repeater {
       model: [
     { activePath: "Icons/charging_active.svg", inactivePath: "Icons/charging_NotActive.svg", isActive: charging_active, x: 0, y: 0 },
     { activePath: "Icons/CheckEngine_active.svg", inactivePath: "Icons/CheckEngine_NotActive.svg", isActive: checkEngine_active, x: 80, y: 0 },
     { activePath: "Icons/CruiseControl_active.svg", inactivePath: "Icons/CruiseControl_NotActive.svg", isActive: cruiseControl_active, x: 160, y:0 },
     { activePath: "Icons/ABS_active.svg", inactivePath: "Icons/ABS_NotActive.svg", isActive: abs_active, x: 240, y: 0 },
     { activePath: "Icons/DoorOpen_active.svg", inactivePath: "Icons/DoorOpen_NotActive.svg", isActive: doorOpen_active, x: 320, y: 0 },
     { activePath: "Icons/ESP_active.svg", inactivePath: "Icons/ESP_NotActive.svg", isActive: esp_active, x: 400, y: 0 },
     { activePath: "Icons/Imobilizer_fault.svg", inactivePath: "Icons/Imobilizer_NotFault.svg", isActive: imobilizer_active, x: 480, y: 0 },
     { activePath: "Icons/ParkingBreak_active.svg", inactivePath: "Icons/ParkingBreak_NotActive.svg", isActive: parkingBrake_active, x: 560, y: 0 },
     { activePath: "Icons/SeatBelt_active.svg", inactivePath: "Icons/SeatBelt_NotActive.svg", isActive: seatBelt_active, x: 640, y: 0 },
     { activePath: "Icons/SterringFault_active.svg", inactivePath: "Icons/SterringFault_NotActive.svg",isActive: sterringFault_active, x: 720, y: 0 },
     { activePath: "Icons/LightIcons/AntiFog_active.svg", inactivePath:"Icons/LightIcons/AntiFog_NotActive.svg",isActive: antiFog_active, x: 800, y: 0 },
        ]

        delegate: RowLayout {
            width: 100
            height: 100
            x: modelData.x
            y: modelData.y

            Image {
                // anchors.centerIn: parent
                source: modelData.activePath
                width: 50
                height: 50
                visible: modelData.isActive
            }


            Image {
                // anchors.centerIn: parent
                source: modelData.inactivePath
                width: 50
                height: 50
                visible: !modelData.isActive
            }
        }
    }
}



