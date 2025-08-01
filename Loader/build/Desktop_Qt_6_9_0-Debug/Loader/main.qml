import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: ld
        anchors.fill: parent
        source: "page1.qml"
    }

    Connections{
        target: ld.item

        function onPage1NextPage(){
            ld.source = "page2.qml"
        }
        function onPage2NextPage(){
            ld.source = "page3.qml"
        }

        function onPage3NextPage(){
            ld.source = "page4.qml"
        }

        function onPage4NextPage(){
            ld.source = "page5.qml"
        }

        function onPage2BackPage(){
            ld.source = "page1.qml"
        }

        function onPage3BackPage(){
            ld.source = "page2.qml"
        }

        function onPage4BackPage(){
            ld.source = "page3.qml"
        }

        function onPage5BackPage(){
            ld.source = "page4.qml"
        }
    }

    Loader {
        id: _loader
        width: parent.width
        height: parent.height - _footer.height
        anchors.top: parent.top
    }

    Rectangle {
        id: _footer
        height: 50
        width: parent.width
        color: "pink"
        anchors.bottom: parent.bottom

        RowLayout {
            id: _row
            anchors.fill: parent

            Button {
                id: _btn1
                text: "1"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    _loader.source = "page1.qml"
                }
            }

            Button {
                id: _btn2
                text: "2"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    _loader.source = "page2.qml"
                }
            }

            Button {
                id: _btn3
                text: "3"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    _loader.source = "page3.qml"
                }
            }

            Button {
                id: _btn4
                text: "4"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    _loader.source = "page4.qml"
                }
            }

            Button {
                id: _btn5
                text: "5"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    _loader.source = "page.qml"
                }
            }
        }
    }
}
