import QtQuick
import QtQuick.Controls

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: rect1
        width: parent.width/1.5
        height: parent.height/1.5
        color: "black"
        anchors.top: parent.top
        anchors.topMargin: height/4
        anchors.left: parent.left
        anchors.leftMargin: width/4

        Image {
            id: watch
            source: "qrc:/Login/pics/watch.png"
            anchors.top: rect1.top
            anchors.topMargin: rect1.height/6
            anchors.left: rect1.left
            anchors.leftMargin: rect1.width/10
        }

        FontLoader {
            id: webFont
            source: "qrc:/Login/fonts/RobotoSlab-VariableFont_wght.ttf"
        }

        Text {
            id: head
            text: qsTr("Welcome back...")
            color: "white"
            font.family: webFont.name
            font.bold: true
            font.pointSize: 25
            anchors.top: rect1.top
            anchors.right: rect1.right
            anchors.rightMargin: rect1.width/5
            anchors.topMargin: rect1.height/6
        }

        TextField {
            placeholderText: qsTr("username")
            height: rect1.height/10
            width: rect1.width/4
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: parent.width/6.5
            anchors.topMargin: parent.height/3.5
        }
    }
}
