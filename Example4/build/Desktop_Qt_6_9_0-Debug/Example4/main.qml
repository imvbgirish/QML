import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rect
        height: 200
        width: 300
        anchors.centerIn: parent
        border.color: "black"

        Rectangle
        {
            id:_rect1
            color: "blue"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 10
            anchors.leftMargin: 10
            anchors.right: parent.horizontalCenter
            anchors.bottom: parent.verticalCenter
        }
    }
}
