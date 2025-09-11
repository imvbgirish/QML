import QtQuick 2.15
import QtQuick.Controls

TextField{
    id: txtfield

    property color backgroundColor: txtbackground.color
    property color borderColor: txtbackground.border.color
    property color textColor: txtfield.color
    property string placeText: txtfield.placeholderText
    property int fontSize: txtfield.font.pixelSize

    placeholderText: txtfield.placeText
    color: txtfield.textColor

    background: Rectangle {
        id: txtbackground
        anchors.fill: parent
        radius: 180
        color: txtfield.backgroundColor
        border.color: txtfield.borderColor
    }
}
