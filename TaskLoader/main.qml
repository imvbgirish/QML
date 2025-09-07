import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        id: btn
        height: 80
        width: 120
        text: "Button"
        onClicked: {
            loader.active = true
        }
    }

    Loader{
        id: loader
        anchors.fill: parent
        active: false
        source: "Page.qml"
    }
}
