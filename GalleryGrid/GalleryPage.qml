import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    anchors.fill: parent
    color: "#0f0f0f"

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

    Grid {
        id: galleryGrid

        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 12


        columns: 4
        spacing: 10

        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
        CustomImage {
            source: "qrc:/images/flower.jpeg"
        }
    }
}
