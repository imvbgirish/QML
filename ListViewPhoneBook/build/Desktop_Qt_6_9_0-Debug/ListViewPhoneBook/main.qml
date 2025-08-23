import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    ListView{
        id: contactView
        height: parent.height
        width: parent.width / 1.5
        interactive: true
        clip: true
        model: contactModel
        delegate: contactDelegate
    }

    Component{
        id: contactDelegate

        Column{
            spacing: 5
            height: 70
            width: 200

            Text{
                id: name
                text: contactName
            }

            Text {
                id: number
                text: contactNumber
            }
        }
    }

    Rectangle{
        height: 100
        width: 100

        anchors.centerIn: parent

        Button{
            id:addBtn
            text: "Add"
            height: 60
            width: 150
            onClicked: {
                contactModel.addContactToList()
            }
        }
    }
}

