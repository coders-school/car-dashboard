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

        onClicked: {
            airConditionController.clickButton();
        }
    }

    Dial {
        id: dial
        x: 323
        y: 69
        value: airConditionController.counter
        stepSize: 1
        to: 100

        onMoved: {
            airConditionController.counter = this.value;
        }
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
        x: 165
        y: 246
        text: qsTr("Delay Button")
    }

    SpinBox {
        id: spinBox
        x: 487
        y: 280
        value: airConditionController.counter
        editable: true

        onValueModified: {
            airConditionController.counter = this.value;
        }
    }

    Switch {
        id: switch1
        x: 519
        y: 105
        text: qsTr("Switch")
    }
}
