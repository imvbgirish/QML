import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "orange"
    signal page1NextPage()

    Button {
        id: nextbtn
        text: "Next"
        height: 50
        width: 80
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            page1NextPage()
        }
    }

    Button {
        id: prevbtn
        text: "Previous"
        height: 50
        width: 80
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }

    Component.onCompleted:{
        console.log("Page1 Constructed")
    }

    Component.onDestruction:{
        console.log("Page1 Destructed")
    }
}
