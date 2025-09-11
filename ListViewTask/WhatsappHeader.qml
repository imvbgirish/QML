import QtQuick 2.15
import QtQuick.Controls
import "./customComponents"

Rectangle{
    id: header
    height: parent.height * 0.18
    width: parent.width
    color: "#1E1E1E"

    signal backBtnClicked()

    Row{
        id: row1
        width: parent.width
        height: 36

        CustomText {
            id: appName
            text: qsTr("Whatsapp")
            fontSize: 25
            color: "white"
            leftPadding: 15
            topPadding: 10
        }

        CustomButton{
            id: back
            height: 15
            width: 22
            buttonRadius: 10
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
            text: "«"
            textColor: "white"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.rightMargin: 10
            onClicked: {
                backBtnClicked()
            }
        }
    }

    CustomTextfield{
        id: search
        height: 50
        width: parent.width * 0.94
        placeholderText: "Ask Meta AI or Search"
        fontSize: 16
        leftPadding: 30
        backgroundColor: "#2A2A2A"
        borderColor: "#39ad4b"
        anchors.top: row1.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 15
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
            buttonRadius: width / 2
            text: "All"
            // fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn2
            height: 30
            width: 80
            buttonRadius: width / 2
            text: "Unread"
            // fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn3
            height: 30
            width: 100
            buttonRadius: width / 2
            text: "Favourites"
            // fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn4
            height: 30
            width: 80
            buttonRadius: width / 2
            text: "Groups"
            // fontSize: 14
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }

        CustomButton{
            id: btn5
            height: 30
            width: 45
            buttonRadius: width / 2
            text: "+"
            fontSize: 20
            textColor: "white"
            baseColor: "#39ad4b"
            hoverColor: "#4e9659"
        }
    }
}
