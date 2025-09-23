import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 400
    height: 300

    Page {
        anchors.fill: parent
        id: page1
        objectName: "page1"   // Needed to find it in C++

        Label {
            text: "Hello Page 1"
            anchors.centerIn: parent
        }
    }
}
