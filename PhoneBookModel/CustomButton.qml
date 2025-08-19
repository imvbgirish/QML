import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    property alias text: buttonText.text
    property color baseColor: "#3498db"
    property color hoverColor: "#2980b9"
    property int baseRadius: root.radius
    property int baseWidth: root.width
    signal clicked()

    width: root.width
    height: root.height
    radius: root.baseRadius
    color: baseColor

    Text {
        id: buttonText;
        anchors.centerIn: parent;
        color: "#121212";
        font.bold: true
        font.pixelSize: 14
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: root.clicked()
        onEntered: root.color = root.hoverColor
        onExited: root.color = root.baseColor
    }
}
