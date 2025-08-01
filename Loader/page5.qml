import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "yellow"
    signal page5BackPage()

    Button {
        id: nextbtn
        text: "Next"
        height: 50
        width: 80
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }

    Button {
        id: prevbtn
        text: "Previous"
        height: 50
        width: 80
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            page5BackPage()
        }
    }

    Component.onCompleted:{
        console.log("Page5 Constructed")
    }

    Component.onDestruction:{
        console.log("Page5 Destructed")
    }
}
