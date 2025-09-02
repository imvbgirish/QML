import QtQuick 2.15

Rectangle {
    id: footer
    height: parent.height * 0.11
    width: parent.width
    color: "#1E1E1E"
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
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: img1
                    source: "qrc:/images/chat.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt1
                text: qsTr("Chats")
                font.bold: true
                font.pixelSize: 14
                color: "white"
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
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: img2
                    source: "qrc:/images/social-media.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt2
                text: qsTr("Updates")
                font.bold: true
                font.pixelSize: 14
                color: "white"
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
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: img3
                    source: "qrc:/images/chat.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt3
                text: qsTr("Communities")
                font.bold: true
                font.pixelSize: 14
                color: "white"
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
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: img4
                    source: "qrc:/images/telephone.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt4
                text: qsTr("Calls")
                font.bold: true
                font.pixelSize: 14
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
