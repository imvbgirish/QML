import QtQuick
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    GridLayout {
        id: grid
        columns: 3
        Rectangle{
            height: 100
            width: 100
            color: "tomato"
        }
        Rectangle{
            height: 100
            width: 100
            color: "tomato"
        }
        Rectangle{
            height: 100
            color: "pink"
            Layout.fillWidth: true
        }
        Rectangle{
            height: 100
            width: 100
            color: "tomato"
        }
        Rectangle{
            height: 100
            width: 100
            implicitWidth: 50
            Layout.preferredWidth: 80
            color: "red"
        }
        Rectangle{
            height: 100
            width: 100
            color: "red"
        }
        Rectangle{
            height: 100
            width: 100
            Layout.preferredWidth: 90
            color: "black"
            Layout.columnSpan: 3
            Layout.alignment: Qt.AlignHCenter
        }
    }





    StackLayout {

    }
}
