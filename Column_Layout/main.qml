import QtQuick
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout{
        spacing: 2

        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "red"
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
        }

        Rectangle {
            Layout.alignment: Qt.AlignRight
            color: "green"
            // Layout.fillWidth: true
            Layout.preferredWidth: 40
            Layout.preferredHeight: 70
        }

        Rectangle {
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            color: "blue"
            Layout.preferredWidth: 70
            Layout.preferredHeight: 40

        }
    }

}
