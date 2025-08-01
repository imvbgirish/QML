import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "orange"

    Component.onCompleted:{
        console.log("Page1 Constructed")
    }

    Component.onDestruction:{
        console.log("Page1 Destructed")
    }
}
