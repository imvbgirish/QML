import QtQuick
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    RowLayout {
        spacing: 10

        Rectangle {
            id: rect1
            height: 100
            width: 100
            color: "tomato"
            Layout.fillHeight: true
        }

        Rectangle {
            id: rect2
            height: 100
            width: 100
            color: "pink"
            Layout.fillHeight: true
        }

        ColumnLayout{
            Rectangle{
                id:child1
                height: 100
                width: 100
                color: "yellow"
                Layout.topMargin: 50
            }

            Rectangle{
                id: child2
                height: 100
                width: 100
                color: "blue"
            }
            Rectangle{
                id: child3
                height: 100
                width: 100
                color: "black"
            }

            RowLayout {
                Rectangle {
                    height: 100
                    width: 100
                    color: "black"
                }

                Rectangle {
                    height: 100
                    width: 100
                    color: "orange"
                }
            }
        }
    }
}
