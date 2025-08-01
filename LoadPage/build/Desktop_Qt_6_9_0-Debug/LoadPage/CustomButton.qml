import QtQuick
import QtQuick.Controls

Rectangle {
    id:_rectangle
    height: 50
    width: 100
    color: "black"
    signal buttonClicked()

    property alias text: txt.text
    property alias color: _rectangle.color

    Text {
        id: txt
        color: "white"
        text: qsTr("1")
        anchors.centerIn: parent
    }

    MouseArea {
        id: _mouseArea
        anchors.fill: parent
        onClicked: {
            buttonClicked()
        }
    }
}
