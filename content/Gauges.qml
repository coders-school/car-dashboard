import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0


Item {
    id:cluster
    width: 910
    height: 550
    FlipableItem{
        id: flipable
        x:4
        y:2
        width: 910
        height: 550
        opacity: 1

        Item{
            id: myItem4

            MainBackground{
                id: myMainBackground
                x:0
                y:0
                width: 910
                height: 550


            }

            SpeedGauge {
                id: speedGauge
                x: 435
                y: 25
                width: 500
                height: 500
                scale: 0.9
                //int_kmh
                //kphFrame: Data.Values.kph
            }
            FuelLevel {
                id: fuelLevel
                x: 491
                y: 404
                scale: 0.8
               // currentFuelLevel: Data.Values.fuelLevelActual
            }


        }

    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                running: true
                loops: 1
                duration: 5000
                from: 0
                to: 5000
            }
        ]
        startFrame: 0
        endFrame: 5000
        enabled: true


        KeyframeGroup {
            target: flipable
            property: "flipAngle"
            Keyframe {
                value: 180
                frame: 0
            }

            Keyframe {
                value: 180
                frame: 2389
            }

            Keyframe {
                easing.bezierCurve: [0.90, 0.03, 0.69, 0.22, 1, 1]
                value: 1.1
                frame: 4117
            }
        }

        KeyframeGroup {
            target: flipable
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.17, 0.84, 0.44, 1.00, 1, 1]
                value: 1
                frame: 1015
            }
        }


    }


    states: [
        State {
            name: "running"
            when: !Data.Values.booting

            PropertyChanges {
                target:timeline
                currentFrame: 5000
                enabled: true
            }
        }

    ]
}
