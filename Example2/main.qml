import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rect1
        height: 200
        width: 270
        color: "green"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Rectangle{
        id: rect2
        height: 200
        width: 270
        color: "orange"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: rect1.right
        anchors.leftMargin: 30

        Rectangle{
            id: child1
            height: 100
            width: 100
            color: "white"
            anchors.top: rect2.top
            anchors.topMargin: 40
            anchors.left: rect2.left
            anchors.leftMargin: 30
        }

        Rectangle{
            id: child2
            height: 100
            width: 100
            color: "white"
            anchors.top: rect2.top
            anchors.topMargin: 40
            anchors.left: child1.right
            anchors.leftMargin: 20
        }
    }

    Rectangle{
        id: rect3
        height: 200
        width: 570
        color: "blue"
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.top: rect1.bottom
        anchors.topMargin: 20

        Rectangle{
            id: childrect1
            height: 70
            width: 200
            color: "yellow"
            anchors.top: rect3.top
            anchors.topMargin: 20
            anchors.left: rect3.left
            anchors.leftMargin: 20
        }

        Rectangle{
            id: childrect2
            height: 70
            width: 200
            color: "yellow"
            anchors.top: childrect1.bottom
            anchors.topMargin: 20
            anchors.left: rect3.left
            anchors.leftMargin: 20
        }

        Rectangle{
            id: childrect3
            height: 70
            width: 200
            color: "yellow"
            anchors.top: rect3.top
            anchors.topMargin: 20
            anchors.right: rect3.right
            anchors.rightMargin: 20
        }

        Rectangle{
            id: childrect4
            height: 70
            width: 200
            color: "yellow"
            anchors.top: childrect3.bottom
            anchors.topMargin: 20
            anchors.right: rect3.right
            anchors.rightMargin: 20
        }
    }
}

