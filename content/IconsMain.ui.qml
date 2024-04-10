/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 800
    height: 100

    Image {
        id: aBS_active
        x: 25
        y: 30
        source: "Icons/ABS_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: charging_active
        x: 100
        y: 30
        source: "Icons/charging_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: checkEngine_active
        x: 177
        y: 30
        source: "Icons/CheckEngine_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: cruiseControl_active
        x: 266
        y: 30
        source: "Icons/CruiseControl_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: doorOpen_active
        x: 344
        y: 30
        source: "Icons/DoorOpen_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: eSP_active
        x: 417
        y: 30
        source: "Icons/ESP_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: imobilizer_fault
        x: 495
        y: 30
        source: "Icons/Imobilizer_fault.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: parkingBreak_active
        x: 577
        y: 40
        source: "Icons/ParkingBreak_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: seatBelt_active
        x: 655
        y: 30
        source: "Icons/SeatBelt_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: sterringFault_active
        x: 731
        y: 30
        source: "Icons/SterringFault_active.svg"
        fillMode: Image.PreserveAspectFit
    }
}
