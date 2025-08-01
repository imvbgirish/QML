import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "yellow"

    Component.onCompleted:{
        console.log("Page5 Constructed")
    }

    Component.onDestruction:{
        console.log("Page5 Destructed")
    }
}
