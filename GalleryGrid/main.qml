import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property bool showGallery: false

    Loader {
        id: pageLoader
        anchors.fill: parent
        source: window.showGallery ? "GalleryPage.qml" : "HomePage.qml"
    }
}
