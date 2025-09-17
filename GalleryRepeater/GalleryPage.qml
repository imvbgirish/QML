import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: background
    anchors.fill: parent
    color: "#0f0f0f"
    x:0
    y:0

    property list<url> imageUrls: [
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg",
        "qrc:/images/flower.jpeg"
    ]

    Row {
        id: header
        height: 48
        width: parent.width
        spacing: 12

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 12


        Button {
            text: "Back"
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                showGallery = false
            }
        }

        Text {
            text: "Gallery"
            font.pixelSize: 20
            color: "white"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Grid{
        id: galleryGrid

        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 10

        columns: 4
        spacing: 10

        Repeater{
            model: imageUrls.length

            CustomImage {
                id: img
                source: imageUrls[index]
            }
        }
    }
}
