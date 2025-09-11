import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: btn
    property color baseColor: "#3498db"
    property color hoverColor: "#2980b9"
    property color textColor: "#121212"
    property int buttonRadius: background.radius
    property color borderColor: "#121212"
    property int fontSize: 15


    background: Rectangle {
        id: background
        color: btn.hovered ? btn.hoverColor : btn.baseColor
        radius: buttonRadius
        border.color: btn.borderColor
    }

    contentItem: Text {
        text: btn.text
        anchors.centerIn: parent
        color: btn.textColor
        font.pixelSize: btn.fontSize
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
