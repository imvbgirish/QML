import QtQuick 2.15


Image{
    id: img
    property int imageWidth: 50
    property int imageHeight: 50
    property url imageSource: img.source

    width: img.imageWidth
    height: img.imageHeight
    fillMode: Image.PreserveAspectCrop
    source: imageSource
    anchors.centerIn: parent
}
