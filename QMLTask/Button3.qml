import QtQuick
import QtQuick.Layouts

GridLayout {
    id: grid
    columnSpacing: 50
    rowSpacing: 50
    columns: 2

    CustomButton {
        id: colBtn1
        backgroundColor: "yellow"

        Text {
            id: txt1
            text: qsTr("A")
            anchors.centerIn: parent
        }
        Image {
            anchors.centerIn: parent
            source: ""
        }
    }
    CustomButton {
        id: colBtn2
        backgroundColor: "yellow"

        Text {
            id: txt2
            text: qsTr("B")
            anchors.centerIn: parent
        }
        Image {
            anchors.centerIn: parent
            source: ""
        }
    }
    CustomButton {
        id: colBtn3
        backgroundColor: "yellow"

        Text {
            id: txt3
            text: qsTr("C")
            anchors.centerIn: parent
        }
        Image {
            anchors.centerIn: parent
            source: ""
        }
    }
    CustomButton {
        id: colBtn4
        backgroundColor: "yellow"

        Text {
            id: txt4
            text: qsTr("D")
            anchors.centerIn: parent
        }
        Image {
            anchors.centerIn: parent
            source: ""
        }
    }
}
