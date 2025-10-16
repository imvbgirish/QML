import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        RadioButton {
            checked: true
            text: qsTr("First")
        }
        RadioButton {
            text: qsTr("Second")
        }
        RadioButton {
            text: qsTr("Third")
        }
    }

    RadioButton{
        id: btn
        text: "1"
        anchors.centerIn: parent
    }

    RadioButton{
        text: "2"
        anchors.horizontalCenter: btn.horizontalCenter
    }
}
