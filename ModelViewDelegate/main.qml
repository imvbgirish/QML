import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel
    {
        id: studentModel

        ListElement { Name: "GirishA"; RollNO: "1"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "Girish"; RollNO: "10"; Phone: "345678"}
        ListElement { Name: "GirishZ"; RollNO: "100"; Phone: "345678"}
    }

    ListView{
        id: studentView
        width: parent.width * 0.4
        height: parent.height
        model: studentModel
        delegate: studentDelegate
        clip: true
        spacing: 5
        header: header
        anchors.centerIn: parent
    }

    Component {
        id: header

        Header{

        }
    }

    Component {
        id: studentDelegate

        Rectangle {
            id: background
            width: studentView.width
            height: studentView.height * 0.1
            color: "tomato"
            border.color: "black"
            Row
            {
                spacing: 35
                anchors.centerIn: parent

                Text {
                    id: stdName
                    text: Name
                    font.bold: true
                }

                Text {
                    id: stdRoll
                    text: RollNO
                    font.bold: true

                }

                Text {
                    id: stdPhone
                    text: Phone
                    font.bold: true

                }
            }
        }
    }
}
