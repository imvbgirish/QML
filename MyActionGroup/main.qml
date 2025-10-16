import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ActionGroup {
        onTriggered: console.log("triggered:", action.text)

        Action { text: "First" }
        Action { text: "Second" }
        Action { text: "Third" }
    }

}
