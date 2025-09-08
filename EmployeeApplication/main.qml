import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: screen.width
    height: screen.height
    visible: true
    title: qsTr("Employee Application")

    Loader {
        id: loader
        width: parent.width
        height: parent.height
        source: "LoginPage.qml"
    }

    Connections {
        target: loader.item

        function onSignInButtonClicked() {
            loader.source = "MenuPage.qml"
        }
    }
}
