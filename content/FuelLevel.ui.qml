/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0

Item {
    id: my_fuelLevel
    width: 414
    height: 105
    property int fuelLevel:0

    Image {
        id: dotLines
        x: 3
        y: 3
        width: 370
        height: 95
        visible: true
        source: "FuelLevel_EngineTemp/liniaPrzerywana.svg"
        scale: 1
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: levelActive_1
        x: -24
        y: -3
        width: 110
        height: 79
        visible: true
        source: "FuelLevel_EngineTemp/linia1_orange.svg"
        rotation: -3
        scale: 0.48
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: levelActive_2
        x: 32
        y: 24
        width: 119
        height: 79
        visible: true
        source: "FuelLevel_EngineTemp/linia2.svg"
        rotation: -3
        scale: 0.48
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: levelActive_3
        x: 88
        y: 61
        width: 135
        height: 33
        visible: true
        source: "FuelLevel_EngineTemp/linia3.svg"
        rotation: -1
        scale: 0.48
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: levelActive_4
        x: 148
        y: 58
        width: 150
        height: 39
        visible: true
        source: "FuelLevel_EngineTemp/linia4.svg"
        rotation: 4
        scale: 0.48
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: levelActive_5
        x: 219
        y: 30
        width: 135
        height: 65
        visible: true
        source: "FuelLevel_EngineTemp/linia5.svg"
        rotation: 5.43
        scale: 0.48
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: levelActive_6
        x: 286
        y: -11
        width: 119
        height: 90
        visible: true
        source: "FuelLevel_EngineTemp/linia6.svg"
        rotation: 6
        scale: 0.48
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: fullTank_text
        x: 336
        y: 0
        width: 19
        height: 28
        color: "#ffffff"
        text: qsTr("F")
        font.pixelSize: 20
        font.family: "Verdana"
        font.bold: true
    }

    Text {
        id: emptyTank_text
        x: 22
        y: 0
        width: 19
        height: 28
        color: "#ffffff"
        text: qsTr("E")
        font.pixelSize: 20
        font.family: "Verdana"
        font.bold: true
    }

    Image {
        id: petrolNormalState
        x: 172
        y: 10
        width: 50
        height: 41
        source: "Icons/GaugesIcons/PetrolReserve_NotActive.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: petrolReserve
        x: 172
        y: 10
        width: 50
        height: 41
        source: "Icons/GaugesIcons/PetrolReserve_active.svg"
        fillMode: Image.PreserveAspectFit
    }

    states: [
        State {
            name: "Level0"
            when: my_fuelLevel.fuelLevel === 0
            PropertyChanges {
                target: levelActive_1
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 0
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 1
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 0
            }

        },

        State {
            name: "Level1"
            when: my_fuelLevel.fuelLevel === 1
            PropertyChanges {
                target: levelActive_1
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 0
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 1
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 0
            }
        },

        State {
            name: "Level2"
            when: my_fuelLevel.fuelLevel === 2
            PropertyChanges {
                target: levelActive_1
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 0
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 0
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 1
            }
        },
        State {
            name: "Level3"
            when: my_fuelLevel.fuelLevel === 3
            PropertyChanges {
                target: levelActive_1
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 0
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 0
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 1
            }
        },
        State {
            name: "Level4"
            when: my_fuelLevel.fuelLevel === 4
            PropertyChanges {
                target: levelActive_1
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 0
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 0
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 0
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 1
            }
        },
        State {
            name: "Level5"
            when: my_fuelLevel.fuelLevel === 5
            PropertyChanges {
                target: levelActive_1
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 0
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 0
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 1
            }
        },
        State {
            name: "Level6"
            when: my_fuelLevel.fuelLevel === 6
            PropertyChanges {
                target: levelActive_1
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_2
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_3
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_4
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_5
                opacity: 1
            }
            PropertyChanges {
                target: levelActive_6
                opacity: 1
            }
            PropertyChanges {
                target: petrolReserve
                opacity: 0
            }
            PropertyChanges {
                target: petrolNormalState
                opacity: 1
            }
        }
    ]
}
