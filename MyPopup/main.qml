import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        text: "Open"
        onClicked: popup.open()

        Popup {
            id: popup
            x: 100
            y: 100
            width: 200
            height: 300
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        }
    }
}
