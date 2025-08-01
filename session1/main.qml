import QtQuick

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rect1
        height: 100
        width: 100
        x: 40
        y: 20
        color: "red"
        z: 1
    }

    Rectangle{
        id: rect2
        height: 100
        width: 100
        x: 10
        y: 20
        color: "blue"
        anchors.left: rect1.right
    }

    Rectangle{
        id: rect3
        height: 100
        width: 100
        color:"green"
        anchors.centerIn: parent
    }
}
