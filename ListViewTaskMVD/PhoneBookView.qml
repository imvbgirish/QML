import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle{
    id: homePage
    color: "#1E1E1E"
    anchors.fill: parent

    // property string pageTitle: ""
    // property var currentModel: null
    signal goBack()


    Header {
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
            }
        }
    }
}
