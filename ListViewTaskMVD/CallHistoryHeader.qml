import QtQuick 2.15

Rectangle{
    id: header
    height: parent.height * 0.12
    width: parent.width
    color: "#1E1E1E"
    // border.color: "red"

    signal backBtnClicked()

    Row{
        id: row1
        width: parent.width
        height: 36

        Text {
            id: appName
            text: qsTr("History")
            font.bold: true
            font.pixelSize: 35
            color: "white"
            leftPadding: 20
            topPadding: 15
        }
    }
}
