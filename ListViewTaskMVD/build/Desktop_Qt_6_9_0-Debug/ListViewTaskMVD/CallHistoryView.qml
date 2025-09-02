import QtQuick 2.15

Rectangle{
    id: cBackground
    color: "#1E1E1E"
    anchors.fill: parent

    CallHistoryHeader{
        id: callHistoryHeader
    }

    CallHistoryFooter{
        id: callHistoryFooter
    }

    ListView{
        id: callHistoryView
        width: parent.width
        height: parent.height
        model: CallHistoryModel
        anchors.top: callHistoryHeader.bottom
        anchors.bottom: callHistoryFooter.top
        spacing: 10
        clip: true
        header: callHistoryHeader
        footer: callHistoryFooter
        delegate: myComponent
    }

    Component {
        id: myComponent

        Rectangle {
            id: dataRow
            height: 70
            width: parent.width
            color: "#1E1E1E"

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
                        color: "white"
                    }

                    Text {
                        text: contactNumber
                        font.pixelSize: 14
                        color: "white"
                    }

                    Text {
                        text: contactedTime
                        font.pixelSize: 12
                        color: "white"
                    }
                }
            }
        }
    }
}
