import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    id: showContactInfo
    color: "#1E1E1E"
    anchors.fill: parent
    signal backToListBtnClicked()

    property string name: ""
    property string phoneNumber: ""
    property string imageUrl: ""

    Column {
        id: dataColumn
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 150

        Rectangle {
            id: imageField
            radius: 90
            height: 180
            width: 180
            clip: true

            Image {
                id: img
                width: parent.width * 0.6
                height: parent.height * 0.6
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: imageUrl
            }
        }

        Text {
            id: displayName
            text: "Name:      "+ name
            color: "white"
            font.pixelSize: 18
            font.bold: true
            topPadding: 20
        }

        Text {
            id: displayNumber
            text: "Contact:   "+ phoneNumber
            color: "white"
            font.pixelSize: 18
            font.bold: true
        }
    }

    CustomButton{
        id: back
        text: "Back"
        height: 40
        width: 60
        radius: 30
        anchors.centerIn: parent
        onClicked: {
            backToListBtnClicked()
        }
    }
}
