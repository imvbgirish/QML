import QtQuick 2.15
import QtQuick.Controls

RoundButton{
    id: btn
    implicitWidth: 38
    implicitHeight: 38
    radius: btnRadius

    property alias textInput: btn.text
    readonly property int btnRadius: 10
    readonly property int fontSize: 25
    property color textColor: "white"
    property color otherColor: "red"
    readonly property color borderColor: "white"

    function getTextColor(){
        if(btn.pressed || btn.hovered)
            return otherColor
        return textColor
    }

    Text {
        id: txt
        text: btn.textInput
        color: getTextColor()
        font.pixelSize: btn.fontSize
    }

    background: Rectangle {
        id: btnBackground
        radius: btn.btnRadius
        color: "black"
        border.color: "white"
    }
}
