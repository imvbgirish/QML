import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: rect1
        height: 100
        width: 100
        color: "orange"
        anchors.horizontalCenter: parent.horizontalCenter
        // anchors.verticalCenter: parent.verticalCenter
        border.color: "black"
        radius: 10
        // anchors.centerIn: parent

        TextEdit{
            id: edit
            text: "type here"
        }
    }

    Button{
        id: button
        text: "Submit"
        anchors.centerIn: parent
        onClicked: console.log("Clicked")
    }

    Text {
        id: txt
        text: qsTr("Hey, Good Morning")
        anchors.top: rect1.bottom
    }

    Slider{
        id: slide
        onValueChanged: console.log("Value changed")
        anchors.top: txt.bottom
        anchors.topMargin: 10
    }

    RadioButton{
        id: radio
        anchors.top: slide.bottom
    }

    TextArea{
        id: txtarea
        color: "blue"
        height: 100
        width: 100
    }
}
