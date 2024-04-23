import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Studio.Components 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ItemDelegate{
    id: root
    width: parent.width
    checkable: true
    onClicked:{ contactListView.currentIndex = index}

    contentItem: ColumnLayout {
        id: columnLayout
        spacing: 0
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
                        width: 60
                        height: 60
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
                    }

                }
            }
            Item {
                Layout.fillWidth: true
            }

        }

        ToolButton {
            id: toolDeleteButton
            text: qsTr("Remove contact ")
            visible: root.checked
            onClicked: phoneView.remove(contactListView.currentIndex, 1)
        }
    }
}
