import QtQuick

Rectangle {
    id: background
    width: parent.width
    height: 50
    color: "gray"
    border.color: "Black"

    z: 2

    Row {
        spacing:  25
        // anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 25

        Text {
            id: stuNo
            text: "Index"
            font.bold: true
        }

        Text {
            id: stuName
            text: "Name"
            font.bold: true
        }

        Text {
            id: stuPhone
            text: "Contact"
            font.bold: true
        }

        Text {
            id: stuFather
            text: "Father Name"
            font.bold: true
        }

        Text {
            id: stuEmail
            text: "Email"
            font.bold: true

        }
    }
}


