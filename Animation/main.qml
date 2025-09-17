import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property bool expanded: false

    Rectangle{
        id: rect1
        width: 100
        height: 100
        color: "blue"
    }

    Rectangle {
        id: rectangle
        width: 100
        height: 100
        color: "red"
        anchors.centerIn: parent

        Behavior on width {
            NumberAnimation { duration: 500 }
        }

        Behavior on height {
            NumberAnimation { duration: 500 }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {

                if (!expanded) {
                    rectangle.width = win.width
                    rectangle.height = win.height
                    expanded = true
                } else {
                    rectangle.width = 100
                    rectangle.height = 100
                    expanded = false
                }
            }
        }
    }
}
