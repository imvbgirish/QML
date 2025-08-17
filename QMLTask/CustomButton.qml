import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Button {
    id: btn

    property alias textInput: txt.text
    property alias backgroundColor: back.color

    Layout.preferredWidth: win.width * 0.18
    Layout.preferredHeight: win.height * 0.14
    Layout.alignment: Qt.AlignRight
    Layout.rightMargin: 30

    Text {
        id: txt
        text: btn.textInput
        color: "black"
        anchors.centerIn: parent
        font.pixelSize: win.width * 0.015
    }

    background: Rectangle {
        id: back
        color: btn.backgroundColor
        anchors.fill: parent
        border.color: "black"
        radius: 20
    }
}
