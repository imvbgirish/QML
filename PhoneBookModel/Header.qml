import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    id: headerPage
    color: "#3498db"
    width: parent.width
    height: 150

    Column{
        id: contactRow
            width: parent.width
            height: 100
            spacing: 20
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.margins: 30

        Text {
            id: contact
            text:  "Contacts"
            color: "#121212"
            font.bold: true
            font.pixelSize: 30
        }

        TextField {
            id: search
            width: parent.width * 0.88
            height: 40
            placeholderText: "Search"
            font.pixelSize: 18
            leftPadding: 30
            color: "White"

            background: Rectangle {
                anchors.fill: parent
                radius: 180
                color: "#2A2A2A"
                border.color: "#3498db"
            }

            onTextChanged: {
            }
        }
    }
}
