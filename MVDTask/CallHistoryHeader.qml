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

        CustomButton{
            id: back
            height: 15
            width: 22
            radius: 10
            text: "«"
            textColor: "#121212"
            fontSize: 15
            border.color: "black"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.rightMargin: 10
            onClicked: {
                backBtnClicked()
            }
        }
    }
}
