import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Item {
    id: main
    width: 860
    height: 540

    PhoneListToolBar {
    }

    Component {
            id: contactDelegate

            Button {
                id: button
                width: parent.width
                anchors.fill: wrapper
                height: 150

                Item {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 50

                    Item {
                        id: profilePhotoSegment
                        x: 100

                        Image {
                            id: img
                            anchors.centerIn: profilePhotoSegment
                            source: photo

                            width: 100
                            height: 100
                            fillMode: Image.PreserveAspectCrop
                            layer.enabled: true
                            layer.effect: OpacityMask {
                                maskSource: mask
                            }

                        }
                        Rectangle {
                            id: mask
                            width: img.width
                            height: img.height
                            radius: 250
                            visible: false
                        }
                    }

                    Item {
                        id: infoContactSegment
                        x:200

                        Text {
                            anchors.left: parent.left
                            id: contactInfo
                            font.pointSize: 24
                            text: name + ": " + number
                        }
                    }
                }
            }
    }


    ListView {
        anchors.fill: parent
        anchors.topMargin: 50

        model: ContactModel { id: phoneView }
        delegate: contactDelegate
       }

}
