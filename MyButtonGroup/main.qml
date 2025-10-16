import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ButtonGroup { id: radioGroup }

    Column {
        Label {
            text: qsTr("Radio:")
        }

        RadioButton {
            checked: true
            text: qsTr("DAB")
            ButtonGroup.group: radioGroup
        }

        RadioButton {
            text: qsTr("FM")
            ButtonGroup.group: radioGroup
        }

        RadioButton {
            text: qsTr("AM")
            ButtonGroup.group: radioGroup
        }
    }

}
