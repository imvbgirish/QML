import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: btn
    property alias text: buttonText.text
    property alias textColor: buttonText.color
    property color baseColor: "#3498db"
    property color hoverColor: "#2980b9"
    property int fontSize: 14
    signal clicked()

    color: baseColor

    Text {
        id: buttonText
        anchors.centerIn: parent
        color: "#121212"
        font.bold: true
        font.pixelSize: btn.fontSize
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: btn.clicked()
        onEntered: btn.color = btn.hoverColor
        onExited: btn.color = btn.baseColor
    }
}
