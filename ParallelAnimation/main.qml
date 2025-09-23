import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property bool expanded: false

    Rectangle{
        id: rec
        height: 100
        width: 100
        color: "blue"
        x: 100
    }

    Rectangle{
        id: rectangle
        height: 100
        width: 100
        color: "red"
        anchors.centerIn: parent

        MouseArea{
            id: mouseArea
            anchors.fill: parent

            onClicked: {
                if(!expanded){
                    w.from = rectangle.width
                    h.from = rectangle.height

                    w.to = win.width
                    h.to = win.height
                    expanded = true
                }else{
                    w.from = rectangle.width
                    h.from = rectangle.height

                    w.to = 100
                    h.to = 100
                    expanded = false
                }
              animate.start()
            }
        }
    }

    ParallelAnimation{
        id: animate
        running: true

        PropertyAnimation{
            id: w
            target: rectangle
            property: "width"
            duration: 300
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation{
            id: h
            target: rectangle
            property: "height"
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }
}
