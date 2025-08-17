import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: win
    width: 1080
    height: 720
    visible: true
    title: qsTr("Hello World")

    RowLayout {
        anchors.fill: parent

        Loader {
            id: loader
            Layout.alignment: Qt.AlignCenter
            source: ""
        }

        MainMenu {
            onButton1Clicked: {
                loader.source = "Button1.qml"
            }

            onButton2Clicked: {
                loader.source = "Button2.qml"
            }

            onButton3Clicked: {
                loader.source = "Button3.qml"
            }

            onButton4Clicked: {
                loader.source = "Button4.qml"
            }
        }
    }
}
