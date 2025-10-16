import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: fileButton
        text: "File"
        onClicked: menu.open()

        Menu {
            id: menu

            MenuItem {
                text: "New..."
                onTriggered: document.reset()
            }
            MenuItem {
                text: "Open..."
                onTriggered: openDialog.open()
            }
            MenuItem {
                text: "Save"
                onTriggered: saveDialog.open()
            }
        }
    }
}
