import QtQuick 2.15
import QtQuick.Controls

Popup{
    id: popup
    property color borderColor: popupBackground.border.color
    property color backgroundColor: popupBackground.color
    property int popupHeight: 400
    property int popupWidth:  300

    width: popup.popupWidth
    height:  popup.popupHeight
    focus: true
    modal: true

    background: Rectangle {
        id: popupBackground
        anchors.fill: parent
        radius: 30
        color: popup.backgroundColor
        border.color: popup.borderColor
    }
}
