import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:rect1
        height: 120
        width: 120
        color: "orange"
    }

    Rectangle
    {
        id:rect2
        height: 120
        width: 120
        color: "blue"
        anchors.top: rect1.bottom
        anchors.left: rect1.right
    }

    Rectangle
    {
        id:rect3
        height: 120
        width: 120
        color: "green"
        anchors.top: rect2.bottom
        anchors.left: rect2.right
    }

    Rectangle
    {
        id:rect4
        height: 120
        width: 120
        color: "red"
        anchors.top: rect3.bottom
        anchors.left: rect3.right
    }

    Rectangle
    {
        id:rect5
        height: 120
        width: 120
        color: "pink"
        anchors.top: rect4.bottom
        anchors.left: rect4.right
    }
}
