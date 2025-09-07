import QtQuick 2.15

Rectangle {
    id: homePage
    color: "#1E1E1E"
    anchors.fill: parent

    signal phoneBookClicked()
    signal callHistoryClicked()
    signal whatsappClicked()

    Column{
        anchors.centerIn: parent
        spacing: 15

        CustomButton{
            height: 40
            width: 200
            radius: 15
            text: "Phone Book"
            onClicked: {
                phoneBookClicked()
            }
        }

        CustomButton{
            height: 40
            width: 200
            radius: 15
            text: "Call History"
            onClicked: {
                callHistoryClicked()
            }
        }

        CustomButton{
            height: 40
            width: 200
            radius: 15
            text: "Whatsapp"
            onClicked: {
                whatsappClicked()
            }
        }
    }
}
