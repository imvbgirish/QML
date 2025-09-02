import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 460
    height: 920
    title: "Window"

    Loader {
        id: load
        height: 920
        width: 460
        anchors.centerIn: parent
        source: "HomePage.qml"
    }

    Connections{
        target: load.item

        function onPhoneBookClicked() {
            load.source = "PhoneBookView.qml"
        }

        function onCallHistoryClicked() {
            load.source = "CallHistoryView.qml"
        }

        function onWhatsappClicked() {
            load.source = "WhatsappView.qml"
        }

        function onGoBack(){
            load.source = "HomePage.qml"
        }
    }
}
