import QtQuick 2.15

Rectangle {
    width: parent.width * 0.24
    height: parent.height * 0.25
    color: "#222222"
    radius: 6

    property alias source: img.source

    Image {
        id: img
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }
}
