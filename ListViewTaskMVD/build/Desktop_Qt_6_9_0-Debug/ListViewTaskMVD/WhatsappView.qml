import QtQuick 2.15

Rectangle{
    id: wBackground
    color: "#1E1E1E"
    anchors.fill: parent

    WhatsappHeader{
        id: whatsappHeader
    }

    WhatsappFooter{
        id: whatsappFooter
    }

    ListView{
        id: whatsappView
        width: parent.width
        height: parent.height
        model: WhatsappModel
        anchors.top: whatsappHeader.bottom
        anchors.bottom: whatsappFooter.top
        spacing: 1
        clip: true
        header: whatsappHeader
        footer: whatsappFooter
        delegate: myComponent
    }

    Component {
        id: myComponent

        Rectangle {
            id: dataRow
            height: 70
            width: parent.width
            color: "#1E1E1E"

            Row {
                width: parent.width
                height: 70
                spacing: 10

                Column{
                    width: parent.width
                    height: parent.height
                    spacing: 5
                    leftPadding: 100
                    topPadding: 6

                    Text {
                        text: contactName
                        font.bold: true
                        font.pixelSize: 16
                        color: "white"
                    }

                    Text {
                        text: lastMessage
                        font.pixelSize: 14
                        color: "white"
                    }
                }

                Text {
                    text: contactedTime
                    font.pixelSize: 12
                    color: "white"
                    anchors.right: parent.right
                    rightPadding: 5
                }
            }
        }
    }

    CustomButton{
        id: addContact
        height: 60
        width: 60
        radius: 15
        baseColor: "#39ad4b"
        hoverColor: "#4d9e5a"
        anchors.right: parent.right
        anchors.bottom: whatsappFooter.top
        anchors.bottomMargin: 15
        anchors.rightMargin: 15

        Image {
            id: img
            source: "qrc:/images/new-message.png"
            height: 30
            width: 30
            anchors.centerIn: parent
        }
    }
}
