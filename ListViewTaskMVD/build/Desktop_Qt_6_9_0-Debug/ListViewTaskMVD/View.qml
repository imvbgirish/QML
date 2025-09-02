import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle{
    id: homePage
    color: "#1E1E1E"
    anchors.fill: parent

    property string pageTitle: ""
    property var currentModel: null
    signal goBack()


    Header {
        id: contactsHeader
        headerText: pageTitle
        onBackBtnClicked: {
            goBack()
        }
    }

    ListView {
        id: root
        width: parent.width
        height: parent.height
        model: currentModel
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
            width: root.width * 0.95
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
                        text: {
                            if (typeof contactNumber !== "undefined" && contactNumber !== "")
                                return contactNumber
                            else if (typeof lastMessage !== "undefined" && lastMessage !== "")
                                return lastMessage
                            else
                                return ""
                        }
                        font.pixelSize: 14
                        color: "gray"
                    }

                    Text {
                        text: {
                            if (typeof contactedDate !== "undefined" && contactedDate !== "")
                                return contactedDate
                            else
                                return ""
                        }
                        font.pixelSize: 12
                        color: "gray"
                    }
                }
            }
        }
    }
}
