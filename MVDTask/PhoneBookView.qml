import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: homePage
    color: "#1E1E1E"

    signal goBack()
    signal addClicked()
    signal contactClicked(string name, string phone, string image)

    property string pName: ""
    property string pNumber: ""
    property string pImage: ""

    PhoneBookHeader {
        id: contactsHeader
        onBackBtnClicked: {
            goBack()
        }
    }

    ListView {
        id: phonebookView
        width: parent.width
        height: parent.height
        model: PhoneBookModel
        anchors.top: contactsHeader.bottom
        anchors.topMargin: 20
        anchors.bottom: parent.bottom
        spacing: 10
        clip: true
        delegate: myComponent
    }

    Component {
        id: myComponent

        Rectangle {
            id: dataRow
            height: 70
            width: phonebookView.width * 0.95
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
                        source: contactImage
                        fillMode: Image.PreserveAspectFit
                    }
                }

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
                    }

                    Text {
                        text: contactNumber
                        font.pixelSize: 14
                        color: "gray"
                    }
                }

                Rectangle{
                    id: callImg
                    width: 50
                    height: 50
                    radius: 25
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 10

                    Image {
                        id: call
                        width: parent.width * 0.5
                        height: parent.height * 0.5
                        anchors.centerIn: parent
                        source: "qrc:/images/call.png"
                    }

                    MouseArea{
                        id: openPopup
                        anchors.fill: parent
                        onClicked: {
                            console.log("call button clicked")
                            pName = contactName
                            pNumber = contactNumber
                            pImage = contactImage
                            CallHistoryModel.addCallHistory(contactName,contactNumber,contactImage)
                            callPopup.open()
                        }
                    }
                }

                MouseArea{
                    id: eachContactData
                    height: parent.height
                    width: parent.width - callImg.width
                    onClicked: {
                        contactClicked(contactName,contactNumber,contactImage)
                    }
                }
            }
        }
    }

    Popup{
        id:callPopup
        x: 80
        y: 200
        width: 300
        height: 400
        focus: true
        modal: true
        closePolicy: Popup.NoAutoClose

        background: Rectangle{
            id: popupBackground
            anchors.fill: parent
            radius: 30
            color: "#1E1E1E"
            border.color: "white"
        }

        Rectangle{
            id: callerImg
            height: 120
            width: 120
            radius: width / 2
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 50

            Image{
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
                source: pImage
                fillMode: Image.PreserveAspectFit
            }
        }

        Column{
            id: _col
            anchors.top: callerImg.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 25
            spacing: 15

            Text {
                id: _name
                text: pName
                color: "white"
                font.bold: true
            }

            Text {
                id: _number
                text: pNumber
                color: "white"
                font.bold: true
            }

            Text {
                id: calling
                text: qsTr("Calling...")
                font.bold: true
                font.pixelSize: 20
                color: "green"
            }
        }

        Image {
            id: decline
            width: 60
            height: 60
            source: "qrc:/images/circle.png"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea{
                id: endCall
                anchors.fill: parent
                onClicked: {
                    callPopup.close()
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
        onClicked: {
            homePage.addClicked()
        }
    }

    Component.onCompleted: {
        console.log("PhoneBookView Created")
    }

    Component.onDestruction: {
        console.log("PhoneBookView Destructed")
    }
}
