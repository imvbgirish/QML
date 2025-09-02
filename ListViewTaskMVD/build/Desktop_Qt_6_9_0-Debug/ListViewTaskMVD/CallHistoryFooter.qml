import QtQuick 2.15

Rectangle {
    id: footer
    height: parent.height * 0.11
    width: parent.width
    // border.color: "red"
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
                radius: width/2
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: img1
                    source: "qrc:/images/favorite.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt1
                text: qsTr("Favorites")
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
            width: 130

            CustomButton{
                id: fbtn2
                height: 50
                width: 140
                radius: width/2
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: img2
                    source: "qrc:/images/delay.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt2
                text: qsTr("History")
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
            width: 130

            CustomButton{
                id: fbtn3
                height: 50
                width: 140
                radius: width/2
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: img3
                    source: "qrc:/images/notebook-of-contacts.png"
                    height: 30
                    width: 30
                    anchors.centerIn: parent
                }
            }

            Text {
                id: ftxt3
                text: qsTr("Contacts")
                font.bold: true
                font.pixelSize: 14
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
