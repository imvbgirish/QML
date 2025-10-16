pragma ComponentBehavior: Bound
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView {
        id: color
        property int r: 12
        model: 1

        delegate: Rectangle {
            Component.onCompleted: console.log(color.r)
        }
    }
}
