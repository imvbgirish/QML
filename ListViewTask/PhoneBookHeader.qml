import QtQuick 2.15
import "./customComponents"

Rectangle {
    id: headerPage
    color: "#3498db"
    width: parent.width
    height: 150

    signal backBtnClicked()

    Column{
        id: contactRow
        width: parent.width
        height: 100
        spacing: 20
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 30

        CustomText {
            id: contact
            text: "Contacts"
            fontSize: 30
        }

        CustomTextfield {
            id: search
            width: parent.width * 0.88
            height: 30
            placeText: "Search"
            fontSize: 18
            leftPadding: 30
            textColor: "White"
            backgroundColor: "#2A2A2A"
            borderColor: "#3498db"
        }
    }

    CustomButton{
        id: back
        height: 15
        width: 22
        buttonRadius: 10
        text: "«"
        textColor: "#121212"
        borderColor: "black"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.rightMargin: 10
        onClicked: {
            backBtnClicked()
        }
    }
}

