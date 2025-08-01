import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "blue"

    Component.onCompleted:{
        console.log("Page2 Constructed")
    }

    Component.onDestruction:{
        console.log("Page2 Destructed")
    }
}
