import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "white"
    signal page2NextPage()
    signal page2BackPage()

    Button {
        id: nextbtn
        text: "Next"
        height: 50
        width: 80
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            page2NextPage()
        }
    }

    Button {
        id: prevbtn
        text: "Previous"
        height: 50
        width: 80
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            page2BackPage()
        }
    }

    Component.onCompleted:{
        console.log("Page2 Constructed")
    }

    Component.onDestruction:{
        console.log("Page2 Destructed")
    }
}
