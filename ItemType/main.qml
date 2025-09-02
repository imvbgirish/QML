import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        width: 300
        height: 300

        Component {
            id: redBox
            Rectangle {
                width: 100
                height: 100
                color: "red"
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                redBox.createObject(parent, { x: 50, y: 50 })
            }
        }
    }
}
