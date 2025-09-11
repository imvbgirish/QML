import QtQuick 2.15

Text{
    id: myText
    property color textColor: "#121212"
    property int fontSize: myText.font.pixelSize

    color: textColor
    font.bold: true
    font.pixelSize: fontSize
}
