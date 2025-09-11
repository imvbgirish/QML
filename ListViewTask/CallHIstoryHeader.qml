import QtQuick 2.15
import "./customComponents"

Rectangle{
    id: header
    height: parent.height * 0.12
    width: parent.width
    color: "#1E1E1E"

    signal backBtnClicked()

    Row{
        id: row1
        width: parent.width
        height: 36

        CustomText {
            id: appName
            text: qsTr("History")
            fontSize: 35
            textColor: "white"
            leftPadding: 20
            topPadding: 15
        }

        CustomButton{
            id: back
            height: 15
            width: 22
            buttonRadius: 10
            text: "«"
            textColor: "#121212"
            borderColor: "black"
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
