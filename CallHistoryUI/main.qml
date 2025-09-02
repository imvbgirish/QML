import QtQuick
import QtQuick.Controls

Window {
    width: 460
    height: 920
    visible: true
    title: qsTr("Hello World")


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
                    text: qsTr("History")
                    font.bold: true
                    font.pixelSize: 35
                    color: "black"
                    leftPadding: 20
                    topPadding: 15
                }
            }
        }

        CustomButton{
            id: addContact
            height: 60
            width: 60
            radius: width / 2
            text: ":::"
            fontSize: 30
            anchors.bottom: footer.top
            anchors.bottomMargin: 15
            anchors.horizontalCenter: parent.horizontalCenter
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
                    }

                    Text {
                        id: ftxt1
                        text: qsTr("Favorites")
                        font.bold: true
                        font.pixelSize: 14
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
                    }

                    Text {
                        id: ftxt2
                        text: qsTr("History")
                        font.bold: true
                        font.pixelSize: 14
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
                    }

                    Text {
                        id: ftxt3
                        text: qsTr("Contacts")
                        font.bold: true
                        font.pixelSize: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }
}
