import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: background
    anchors.fill: parent
    color: "#0f0f0f"
    x:0
    y:0

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

    ListView{
        id: galleryListView
        width: parent.width
        height: parent.height
        model: galleryModel
        anchors.top: header.bottom
        anchors.topMargin: 20
        anchors.bottom: parent.bottom
        clip: true

        delegate: Column {
            width: galleryListView.width
            anchors.left: parent.left
            anchors.leftMargin: 12
            spacing: 5

            Text{
                text: date
                color: "white"
                font.pixelSize: 15
                font.bold: true
            }

            GridView{
                id: galleryGrid
                width: parent.width
                height: contentHeight
                cellWidth: 108
                cellHeight: 108
                model: images
                clip: true
                interactive: true

                delegate: CustomImage {
                    height: 100
                    width: 100
                    source: modelData
                }
            }
        }
    }
}
