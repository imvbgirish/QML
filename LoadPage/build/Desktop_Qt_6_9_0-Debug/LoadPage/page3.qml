import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "tomato"

    Component.onCompleted:{
        console.log("Page3 Constructed")
    }

    Component.onDestruction:{
        console.log("Page3 Destructed")
    }
}
