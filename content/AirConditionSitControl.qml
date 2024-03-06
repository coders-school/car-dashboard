import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: main
    width: 860
    height: 540

    Button {
        id: button
        x: 78
        y: 93
        text: qsTr("Button")
        transformOrigin: Item.TopLeft
    }

    Dial {
        id: dial
        x: 593
        y: 54
    }

    Control {
        id: control
        x: 392
        y: 594
    }

    RangeSlider {
        id: rangeSlider
        x: 23
        y: 321
        width: 829
        height: 137
        transformOrigin: Item.TopLeft
        second.value: 0.75
        first.value: 0.25
    }

    DelayButton {
        id: delayButton
        x: 169
        y: 212
        text: qsTr("Delay Button")
    }

    SpinBox {
        id: spinBox
        x: 368
        y: 259
    }

    Switch {
        id: switch1
        x: 276
        y: 111
        text: qsTr("Switch")
    }
}
