import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "purple"
    signal page4NextPage()
    signal page4BackPage()

    Button {
        id: nextbtn
        text: "Next"
        height: 50
        width: 80
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            page4NextPage()
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
            page4BackPage()
        }
    }

    Component.onCompleted:{
        console.log("Page4 Constructed")
    }

    Component.onDestruction:{
        console.log("Page4 Destructed")
    }
}
