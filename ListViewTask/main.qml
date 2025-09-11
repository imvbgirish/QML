import QtQuick
import "./customComponents"

Window {
    width: 460
    height: 920
    visible: true
    title: qsTr("Hello World")

    // CustomButton{
    //     height: 100
    //     width: 100
    //     text: "Button"
    //     onClicked: {
    //         pop.open()
    //     }
    // }

    // CustomTextfield{
    //     height: 50
    //     width: 200
    //     borderColor: "red"
    //     placeholderText: "Hi"
    // }

    // CustomImage{
    //     id: img
    //     // height: 40
    //     // width: 40
    //     source: "qrc:/images/me.jpeg"
    // }


    // CustomPopup{
    //     id: pop
    //     x: 100
    //     y: 100
    //     popupHeight: 100
    //     popupWidth: 100
    //     borderColor: "black"
    //     backgroundColor: "red"
    // }

    // HomePage{

    // }

    // PhoneBookHeader{

    // }

    // CallHIstoryHeader{

    // }

    WhatsappHeader{

    }

    // Loader{
    //     id: load
    //     anchors.fill: parent
    //     active: false
    //     source: ""
    // }

}
