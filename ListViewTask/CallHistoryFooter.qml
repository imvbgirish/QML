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
        spacing: 25
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 10

        Column{
            id: col1
            spacing: 8
            height: parent.height
            width: 130

            CustomButton{
                id: fbtn1
                height: 50
                width: 140
                buttonRadius: width/2
                anchors.horizontalCenter: parent.horizontalCenter

                CustomImage {
                    id: img1
                    source: "qrc:/images/favorite.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt1
                text: qsTr("Favorites")
                fontSize: 14
                textColor: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column{
            id: col2
            spacing: 8
            height: parent.height
            width: 130

            CustomButton{
                id: fbtn2
                height: 50
                width: 140
                buttonRadius: width/2
                anchors.horizontalCenter: parent.horizontalCenter

                CustomImage {
                    id: img2
                    source: "qrc:/images/delay.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt2
                text: qsTr("History")
               fontSize: 14
                textColor: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column{
            id: col3
            spacing: 8
            height: parent.height
            width: 130

            CustomButton{
                id: fbtn3
                height: 50
                width: 140
                buttonRadius: width/2
                anchors.horizontalCenter: parent.horizontalCenter

                CustomImage {
                    id: img3
                    source: "qrc:/images/notebook-of-contacts.png"
                    imageHeight: 30
                    imageWidth: 30
                }
            }

            CustomText {
                id: ftxt3
                text: qsTr("Contacts")
                fontSize: 14
                textColor: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
