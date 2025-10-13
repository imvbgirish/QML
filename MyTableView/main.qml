import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: view
        anchors.fill: parent

        TableView{
            id: studentView
            anchors.fill: parent
            interactive: true
            model: studentModel

            delegate: Rectangle {
                implicitWidth: parent.width
                implicitHeight: 50
                border.color: "lightgray"
                border.width: 1

                Row {
                    anchors.fill: parent
                    anchors.margins: 5
                    spacing: 10

                    Text {
                        text: studentName
                        width: 100
                        elide: Text.ElideRight
                        verticalAlignment: Text.AlignVCenter
                    }

                    Text {
                        text: phoneNumber
                        width: 100
                        elide: Text.ElideRight
                        verticalAlignment: Text.AlignVCenter
                    }

                    Text {
                        text: email
                        width: 200
                        elide: Text.ElideRight
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
    }
}
