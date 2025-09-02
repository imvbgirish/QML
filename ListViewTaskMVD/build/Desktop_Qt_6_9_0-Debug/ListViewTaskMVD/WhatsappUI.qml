import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    id: background
    height: parent.height
    width: parent.width

    Rectangle{
        id: header
        height: parent.height * 0.18
        width: parent.width
        // border.color: "red"

        Row{
            id: row1
            width: parent.width
            height: 36

            Text {
                id: appName
                text: qsTr("Whatsapp")
                font.bold: true
                font.pixelSize: 25
                color: "black"
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
                border.color: "#3498db"
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
            }

            CustomButton{
                id: btn2
                height: 30
                width: 80
                radius: width / 2
                text: "Unread"
                fontSize: 14
            }

            CustomButton{
                id: btn3
                height: 30
                width: 100
                radius: width / 2
                text: "Favourites"
                fontSize: 14
            }

            CustomButton{
                id: btn4
                height: 30
                width: 80
                radius: width / 2
                text: "Groups"
                fontSize: 14
            }

            CustomButton{
                id: btn5
                height: 30
                width: 45
                radius: width / 2
                text: "+"
                fontSize: 20
            }
        }
    }

    CustomButton{
        id: addContact
        height: 60
        width: 60
        radius: 15
        text: "+"
        fontSize: 35
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.bottomMargin: 15
        anchors.rightMargin: 15
    }

    Rectangle {
        id: footer
        height: parent.height * 0.11
        width: parent.width
        // border.color: "red"
        anchors.bottom: parent.bottom

        Row{
            id: footerRow
            height: parent.height
            width: parent.width
            spacing: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: 15

            Column{
                id: col1
                spacing: 8
                height: parent.height
                width: 100

                CustomButton{
                    id: fbtn1
                    height: 50
                    width: 100
                    radius: width/2
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: ftxt1
                    text: qsTr("Chats")
                    font.bold: true
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Column{
                id: col2
                spacing: 8
                height: parent.height
                width: 100

                CustomButton{
                    id: fbtn2
                    height: 50
                    width: 100
                    radius: width/2
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: ftxt2
                    text: qsTr("Updates")
                    font.bold: true
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Column{
                id: col3
                spacing: 8
                height: parent.height
                width: 100

                CustomButton{
                    id: fbtn3
                    height: 50
                    width: 100
                    radius: width/2
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: ftxt3
                    text: qsTr("Communities")
                    font.bold: true
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Column{
                id: col4
                spacing: 8
                height: parent.height
                width: 100

                CustomButton{
                    id: fbtn4
                    height: 50
                    width: 100
                    radius: width/2
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: ftxt4
                    text: qsTr("Calls")
                    font.bold: true
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
