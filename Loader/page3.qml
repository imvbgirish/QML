import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "tomato"
    signal page3NextPage()
    signal page3BackPage()

    Button {
        id: nextbtn
        text: "Next"
        height: 50
        width: 80
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            page3NextPage()
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
            page3BackPage()
        }
    }

    Component.onCompleted:{
        console.log("Page3 Constructed")
    }

    Component.onDestruction:{
        console.log("Page3 Destructed")
    }
}
