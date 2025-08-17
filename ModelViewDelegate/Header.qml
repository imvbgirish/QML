import QtQuick 2.15

Rectangle {
    id: background
    width: studentView.width
    height: studentView.height * 0.1
    color: "white"
    border.color: "black"
    z: 2
    Row
    {
        spacing: 20
        anchors.centerIn: parent

        Text {
            id: stdName
            text: "Name"
            font.bold: true
        }

        Text {
            id: stdRoll
            text: "Roll No"
            font.bold: true

        }

        Text {
            id: stdPhone
            text: "Phone No"
            font.bold: true

        }
    }
}
