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
                x: 426
                y: 10
                width: 500
                height: 500
                kmh_gauge: Data.Values.kmh_gaugeINT
                kmh_string: Data.Values.kmh_gaugeString
                scale: 0.8
            }
            FuelLevel {
                id: fuelLevel
                x: 483
                y: 371
                scale: 0.7
                fuelLevel: Data.Values.fuelLevelInt
            }
            RPMGauge {
                id: rpmGauge
                x: -41
                y: 30
                rpmFrame: Data.Values.rpm_gaugeINT
                scale: 0.65
            }
            EngineTemp {
                id: engineTemp
                x: 22
                y: 362
                scale: 0.55
                currentEngineTemperature: Data.Values.currentEngineTemperatureInt
            }
            IconsLight {
                id: iconsLight
                x: 340
                y: 72
                width: 150
                height: 40
                highBeam_active: Data.Values.highBeam_active
                left_active: Data.Values.left_active
                right_active: Data.Values.right_active
            }
            IconsMain {
                id: iconsMain
                scale: 0.6
                x: 15
                y: 456
                parkingBrake_active: Data.Values.parkingBrake_active
                esp_active: Data.Values.esp_active
                cruiseControl_active: Data.Values.cruiseControl_active
                charging_active: Data.Values.charging_active
                antiFog_active: Data.Values.antiFog_active
                abs_active: Data.Values.abs_active
                checkEngine_active: Data.Values.checkEngine_active
                doorOpen_active: Data.Values.doorOpen_active
                imobilizer_active: Data.Values.imobilizer_active
                seatBelt_active: Data.Values.seatBelt_active
                sterringFault_active: Data.Values.sterringFault_active

            }
            Text {
                id: totalMilage
                x: 340
                y: 435
                width: 156
                height: 25
                color: "#ffffff"
                text: qsTr("Total: 145963 mil")
                font.pixelSize: 15
                font.family: "Verdana"
                font.bold: true
            }
            Text {
                id: tripMilage
                x: 181
                y: 256
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
                x: 181
                y: 278
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
