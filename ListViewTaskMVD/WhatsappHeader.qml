import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    id: header
    height: parent.height * 0.18
    width: parent.width
    color: "#1E1E1E"
    // border.color: "red"
     signal backBtnClicked()

    Row{
        id: row1
        width: parent.width
        height: 36

        Text {
            id: appName
            text: qsTr("Whatsapp")
            font.bold: true
            font.pixelSize: 25
            color: "white"
            leftPadding: 15
            topPadding: 10
        }
    }

    TextField{
        id: search
        height: 50
        width: parent.width * 0.94
        placeholderText: "Ask Meta AI or Search"
        font.pixelSize: 16
        leftPadding: 30
        anchors.top: row1.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 15

        background: Rectangle{
            anchors.fill: parent
            radius: 180
            color: "#2A2A2A"
            border.color: "#39ad4b"
        }
    }

    Row{
        id: row2
        spacing: 6
        anchors.top: search.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 15

        CustomButton{
            id: btn1
            height: 30
            width: 40
            radius: width / 2
            text: "All"
            fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn2
            height: 30
            width: 80
            radius: width / 2
            text: "Unread"
            fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn3
            height: 30
            width: 100
            radius: width / 2
            text: "Favourites"
            fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn4
            height: 30
            width: 80
            radius: width / 2
            text: "Groups"
            fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn5
            height: 30
            width: 45
            radius: width / 2
            text: "+"
            fontSize: 20
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }
    }
}
