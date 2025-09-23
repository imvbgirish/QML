import QtQuick 2.15

Rectangle {
    id: rectangle
    width: parent.width * 0.24
    height: parent.height * 0.25
    color: "#222222"
    radius: 6
    clip: false

    property alias source: img.source
    property bool expanded: false

    Image {
        id: img
        x: 0
        y: 0
        width: rectangle.width
        height: rectangle.height
        fillMode: Image.PreserveAspectCrop

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (!expanded) {
                    imgW.from = img.width
                    imgH.from = img.height
                    imgX.from = img.x
                    imgY.from = img.y

                    imgW.to = rectangle.parent.width
                    imgH.to = rectangle.parent.height
                    imgX.to = -rectangle.x
                    imgY.to = -rectangle.y
                    expanded = true
                    rectangle.z = 1
                } else {
                    imgW.from = img.width
                    imgH.from = img.height
                    imgX.from = img.x
                    imgY.from = img.y

                    imgW.to = rectangle.width
                    imgH.to = rectangle.height
                    imgX.to = 0
                    imgY.to = 0
                    expanded = false
                }

                // imgW.start()
                // imgH.start()
                // imgX.start()
                // imgY.start()

                animate.start()
            }
        }
    }

    ParallelAnimation{
        id: animate
        running: true

        PropertyAnimation {
            id: imgW
            target: img
            property: "width"
            duration: 400
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation {
            id: imgH
            target: img
            property: "height"
            duration: 400
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation {
            id: imgX
            target: img
            property: "x"
            duration: 400
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation {
            id: imgY
            target: img
            property: "y"
            duration: 400
            easing.type: Easing.InOutQuad
        }

        onStopped: {
            if(!expanded)
            rectangle.z = 0
        }
    }
}
