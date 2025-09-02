import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle{
    id: homePage
    color: "#1E1E1E"
    anchors.fill: parent
    signal addClicked()
    signal contactClicked(string name, string phone, string imagePath)

    Column{
        anchors.fill: parent

        Header {
            id: contactsHeader
        }

        ListView {
            id: root
            width: parent.width
            height: parent.height
            model: cppContactModel
            anchors.top: contactsHeader.bottom
            anchors.topMargin: 20
            spacing: 10
            clip: true
            delegate:myComponent
        }

        Component {
            id: myComponent

            Rectangle {
                id: dataRow
                height: 70
                width: root.width * 0.95
                radius: 10
                anchors.left: parent.left
                anchors.leftMargin: 12
                color: "#cdcce0"

                Row {
                    width: parent.width
                    height: 70
                    spacing: 10

                    Rectangle{
                        id: imgBackground
                        width: 50
                        height: 50
                        radius: 25
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 10

                        Image {
                            width: parent.width * 0.5
                            height: parent.height * 0.5
                            anchors.centerIn: parent
                            source: imagePath
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Text {
                        text: name
                        font.bold: true
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        leftPadding: 100
                    }
                }

                MouseArea{
                    id: eachContactData
                    anchors.fill: parent
                    onClicked: {
                        contactClicked(name,phone,imagePath)
                    }
                }
            }
        }
    }

    CustomButton {
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 30
        anchors.bottomMargin: 40
        width: 80
        height: 60
        radius: 40
        text: "Add"
        // z: 2
        onClicked: {
            homePage.addClicked()
        }
    }
}
