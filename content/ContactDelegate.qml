import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ItemDelegate{
    id: root
    width: 600
    checkable: true
    onClicked:{ contactListView.currentIndex = index}

    contentItem: ColumnLayout {
        id: columnLayout
        spacing: 14
        anchors.fill: parent
           Layout.fillWidth: true

        RowLayout {
            width: parent.width
            ColumnLayout {
                Item {
                    id: contact
                    height: 50
                    Layout.bottomMargin: 10

                    Image {
                        id: img
                        source: photo
                        width: 72
                        height: 72
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

                    Label {
                        x: 100
                        y:20
                        font.pointSize: 16
                        width: columnLayout.width
                        text: name + "     " + number
                        color: "#e6e4e4"
                        font.family: "TimesNewRoman"
                    }
                }
            }

            Item {
                Layout.fillWidth: true
            }

        }

        RoundButton {
            id: toolDeleteButton
            // text: qsTr("Remove contact ")
            visible: root.checked
            onClicked: phoneView.remove(contactListView.currentIndex, 1)

            Image {
                id: delete_contact
                anchors.fill: parent
                source: "images/delete_contact.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Item{
            id:callingButton

            RoundButton {
                id: toolcallingButton
                x: 78
                y: -66
                width: 45
                height: 45
                visible: root.checked

                Image {
                    id: phone_calling
                    anchors.fill: parent
                    source: "images/telephone-call.png"
                    fillMode: Image.PreserveAspectFit
                }

            }
        }
    }
}


