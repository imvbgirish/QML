import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:rect
        height: 300
        width: 350
        color: "white"
        anchors.centerIn: parent
        border.color: "black"

        Rectangle
        {
            id: child1
            height: 100
            width: 100
            radius: 360
            color: "white"
            border.color: "black"
            anchors.bottom: rect.bottom
            anchors.right: rect.right
        }
        Rectangle
        {
            id: child2
            height: 100
            width: 100
            radius: 360
            color: "white"
            border.color: "black"
            anchors.left: rect.horizontalCenter
        }
        Rectangle
        {
            id: child3
            height: 100
            width: 100
            radius: 360
            border.color: "black"
            color: "white"
            anchors.left: child2.right
        }

        Rectangle
        {
            id: child4
            height: 100
            width: 100
            radius: 360
            color: "white"
            border.color: "black"
            anchors.horizontalCenter: rect.left
            anchors.verticalCenter: rect.top
        }

        Rectangle
        {
            id: child5
            height: 100
            width: 100
            radius: 360
            color: "white"
            border.color: "black"
            anchors.verticalCenter: rect.top
            anchors.horizontalCenter: rect.horizontalCenter
        }

        Rectangle
        {
            id: child6
            height: 100
            width: 100
            radius: 360
            color: "white"
            border.color: "black"
            anchors.top: rect.bottom
            anchors.horizontalCenter: rect.right

        }
    }

    Button{
        id: submit
        text: qsTr("Submit")

        Text{
            text: "Submit"
            color: "white"
            font.pixelSize: 15
        }
    }
}
