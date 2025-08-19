import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 500
    height: 1010
    visible: true
    title: qsTr("Hello World")

    Loader{
        id: load
        width: 500
        height: parent.height
        anchors.centerIn: parent
        source: "ContactList.qml"
    }

    Connections {
        target: load.item

        function onAddClicked(){
            load.source = "AddContact.qml"
        }

        function onSaveBtnClicked(){
            load.source = "ContactList.qml"
        }

        function onBackBtnClicked(){
            load.source = "ContactList.qml"
        }

        function onContactClicked(name,phone,imagePath){
            load.setSource("ShowContactInfo.qml",{
                           "name": name,
                           "phoneNumber": phone,
                           "imageUrl":imagePath })
        }

        function onBackToListBtnClicked(){
            load.source = "ContactList.qml"
        }
    }
}
