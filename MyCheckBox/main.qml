import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        CheckBox {
            checked: true
            text: qsTr("First")
        }
        CheckBox {
            text: qsTr("Second")
            checkState: Qt.Checked
        }
        CheckBox {
            // checked: true
            checkable: true
            text: qsTr("Third")
        }
    }


    Column {
        anchors.right: parent.right
        ButtonGroup {
            id: childGroup
            exclusive: false
            checkState: parentBox.checkState
        }

        CheckBox {
            id: parentBox
            text: qsTr("Parent")
            checkState: childGroup.checkState
        }

        CheckBox {
            checked: true
            text: qsTr("Child 1")
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
        }

        CheckBox {
            text: qsTr("Child 2")
            leftPadding: indicator.width
            ButtonGroup.group: childGroup
        }
    }
}
