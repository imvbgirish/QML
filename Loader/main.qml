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
}
