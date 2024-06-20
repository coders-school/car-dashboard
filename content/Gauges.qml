import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import Data 1.0 as Data


Item {
    id:cluster
    width: 910
    height: 550
    // FlipableItem{
    //     id: flipable
    //     x:4
    //     y:2
    //     width: 910
    //     height: 550
    //     opacity: 1

        Item{
            id: myItem4

            // MainBackground{
            //     id: myMainBackground
            //     x:0
            //     y:0
            //     width: 910
            //     height: 550
            // }

            SpeedGauge {
                id: speedGauge
                x: 427
                y: 6
                enabled: false
                width: 500
                height: 500
                kmh_gauge: carInfo.speed
                kmh_string: carInfo.speed
                scale: 0.75
            }
            FuelLevel {
                id: fuelLevel
                x: 479
                y: 356
                scale: 0.6
                fuelLevel: carInfo.fuelLevel
            }
            RPMGauge {
                id: rpmGauge
                x: -31
                y: 17
                rpmFrame: carInfo.engineRPM
                scale: 0.65
            }
            EngineTemp {
                id: engineTemp
                x: 32
                y: 359
                scale: 0.55
                currentEngineTemperature: carInfo.engineTemperature
            }
            IconsLight {
                id: iconsLight
                x: 365
                y: 113
                width: 144
                height: 40
                highBeam_active: carControlsInfo.highBeamActive
                left_active: carControlsInfo.leftSignal
                right_active: carControlsInfo.rightSignal
            }
            IconsMain {
                id: iconsMain
                scale: 0.6
                x: 31
                y: 456

            }
            Text {
                id: totalMilage
                x: 353
                y: 435
                width: 156
                height: 25
                color: "#ffffff"
                text: qsTr("Total: 145963 km")
                font.pixelSize: 15
                font.family: "Verdana"
                font.bold: true
            }
            Text {
                id: tripMilage
                x: 191
                y: 243
                width: 74
                height: 32
                color: "#ffffff"
                text: qsTr("Time")
                font.pixelSize: 18
                font.family: "Verdana"
                font.bold: true
            }
            Text {
                id: timeNow
                x: 191
                y: 265
                width: 93
                height: 36
                color: "#ffffff"
                text: Data.Values.time
                font.pixelSize: 18
                font.family: "Verdana"
                font.bold: true
            }
        }

    //     Image {
    //         id: flipImage
    //         x: 0
    //         y: 0
    //         width: 910
    //         height: 550
    //         visible: true
    //         source: "MainBackground/Background_hello.svg"
    //     }
    // }


    // Timeline {
    //     id: timeline
    //     animations: [
    //         TimelineAnimation {
    //             id: timelineAnimation
    //             property: "currentFrame"
    //             running: true
    //             loops: 1
    //             duration: 3000
    //             from: 0
    //             to: 3000
    //         }
    //     ]
    //     startFrame: 0
    //     endFrame: 5000
    //     enabled: true


        // KeyframeGroup {
        //     target: flipable
        //     property: "flipAngle"
        //     Keyframe {
        //         value: 180
        //         frame: 0
        //     }

        //     Keyframe {
        //         value: 180
        //         frame: 2389
        //     }

        //     Keyframe {
        //         easing.bezierCurve: [0.90, 0.03, 0.69, 0.22, 1, 1]
        //         value: 1.1
        //         frame: 4117
        //     }
        // }

        // KeyframeGroup {
        //     target: flipable
        //     property: "opacity"
        //     Keyframe {
        //         value: 0
        //         frame: 0
        //     }

        //     Keyframe {
        //         easing.bezierCurve: [0.17, 0.84, 0.44, 1.00, 1, 1]
        //         value: 1
        //         frame: 1015
        //     }
        // }
    // }


    // states: [
    //     State {
    //         name: "running"
    //         when: !Data.Values.booting

    //         PropertyChanges {
    //             target:timeline
    //             currentFrame: 1000
    //             enabled: true
    //         }
    //     }

    // ]
}
