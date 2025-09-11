import QtQuick 2.15
import "./customComponents"

Rectangle {
    id: footer
    height: parent.height * 0.11
    width: parent.width
    color: "#1E1E1E"
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
                buttonRadius: width/2
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter

                CustomImage {
                    id: img1
                    source: "qrc:/images/chat.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt1
                text: qsTr("Chats")
               fontSize: 14
                textColor: "white"
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
                buttonRadius: width/2
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter

                CustomImage {
                    id: img2
                    source: "qrc:/images/social-media.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt2
                text: qsTr("Updates")
                fontSize: 14
                textColor: "white"
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
                buttonRadius: width/2
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter

                CustomImage {
                    id: img3
                    source: "qrc:/images/group.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt3
                text: qsTr("Communities")
                fontSize: 14
                textColor: "white"
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
                buttonRadius: width/2
                baseColor: "#39ad4b"
                hoverColor: "#4e9659"
                anchors.horizontalCenter: parent.horizontalCenter
                CustomImage {
                    id: img4
                    source: "qrc:/images/telephone.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt4
                text: qsTr("Calls")
                fontSize: 14
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
