import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    anchors.fill: parent
    color: "#1e1e1e"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Welcome"
            font.pixelSize: 36
            color: "white"
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            text: "Open Gallery"
            width: 220
            height: 48
            onClicked: {
                showGallery = true
            }
        }
    }
}
