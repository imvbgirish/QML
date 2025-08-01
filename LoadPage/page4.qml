import QtQuick
import QtQuick.Controls


Rectangle {
    id: _rect
    anchors.fill: parent
    color: "purple"

    Component.onCompleted:{
        console.log("Page4 Constructed")
    }

    Component.onDestruction:{
        console.log("Page4 Destructed")
    }
}
