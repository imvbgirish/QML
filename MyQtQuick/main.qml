import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    x:200  //with respect to screen

    Rectangle{
        id: r1
        height: 200
        width: 200
        color: "blue"
        x:200

        Rectangle{
            id: r2
            height: r1.width / 3
            width: r1.height / 3
            color: "red"
        }


        Rectangle{
            id: r3
            height: r2.width
            width: r2.height
            color: "yellow"
        }


        Rectangle{
            id: r4
            height: r3.width
            width: r3.height
            color: "green"
        }
    }
}
