import QtQuick 2.15

Rectangle{
    id: wBackground
    color: "#1E1E1E"
    anchors.fill: parent

    CallHistoryHeader{
        id: callHeader
    }

    CallHistoryFooter{
        id: callFooter
    }

    ListView{
        id: callHistoryView
        width: parent.width
        height: parent.height
        model: CallHistoryModel
        anchors.top: callHeader.bottom
        anchors.bottom: callHeader.top
        spacing: 1
        clip: true
        header: callHeader
        footer: callFooter
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
