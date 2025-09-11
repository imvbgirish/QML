import QtQuick 2.15

Rectangle{
    id: cBackground
    color: "#1E1E1E"
    anchors.fill: parent

    signal goBack()

    CallHistoryHeader{
        id: callHistoryHeader
        onBackBtnClicked: {
            goBack()
        }
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

                Text{
                    text: incoming ? "incoming" : "outgoing"
                    font.pixelSize: 12
                    color: "white"
                    anchors.right: parent.right
                    rightPadding: 5
                    topPadding: 6
                    // visible:
                }
            }
        }
    }

    Component.onCompleted: {
        console.log("CallHistoryView Created")
    }

    Component.onDestruction: {
        console.log("CallHistoryView Destructed")
    }
}
