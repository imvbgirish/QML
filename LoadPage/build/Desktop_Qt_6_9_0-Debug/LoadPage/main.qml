import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: _loader
        width: parent.width
        height: parent.height - _footer.height
        anchors.top: parent.top
        source: "page1.qml"
    }

    Rectangle {
        id: _footer
        height: 50
        width: parent.width
        color: "white"
        anchors.bottom: parent.bottom

        RowLayout {
            id: _row
            anchors.fill: parent

            CustomButton {
                id: _btn1
                text: "1"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onButtonClicked:  {
                    _loader.source = "page1.qml"
                }
            }

            CustomButton {
                id: _btn2
                text: "2"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onButtonClicked:  {
                    _loader.source = "page2.qml"
                }
            }

            CustomButton {
                id: _btn3
                text: "3"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onButtonClicked:  {
                    _loader.source = "page3.qml"
                }
            }

            CustomButton {
                id: _btn4
                text: "4"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onButtonClicked:  {
                    _loader.source = "page4.qml"
                }
            }

            CustomButton {
                id: _btn5
                text: "5"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onButtonClicked:  {
                    _loader.source = "page5.qml"
                }
            }
        }
    }
}
