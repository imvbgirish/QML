import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs

Rectangle {
    id: addContact
    anchors.fill: parent
    color: "#1E1E1E"

    signal saveBtnClicked()
    signal backBtnClicked()

    Row{
        id: addContactRow
        height: 80
        spacing: 20
        width: parent.width
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 10

        CustomButton{
            id: back
            text: "Back"
            height: 40
            width: 60
            radius: 30
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                backBtnClicked()
            }
        }

        Text {
            text: "Create new contact"
            font.pixelSize: 20
            font.bold: true
            color: "white"
            anchors.verticalCenter: parent.verticalCenter
            leftPadding: 80
        }

        CustomButton{
            id: save
            text: "Save"
            height: 40
            width: 60
            radius: 30
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            onClicked: {
                if (!cppContactModel) {
                    console.log("Error: contactModel not set");
                    return;
                }
                if (nameField.text === "" ){
                    console.log("Name field is empty")
                    return;
                }else if(phoneField.text === ""){
                    console.log("Phone field is empty")
                    return;
                }

                cppContactModel.addContact(nameField.text, phoneField.text, img.source);

                nameField.clear();
                phoneField.clear();

                saveBtnClicked()
            }
        }
    }

    Rectangle {
        width: parent.width
        height: 1
        color: "#444"
        anchors.top: addContactRow.bottom
    }


    Column {
        id: dataColumn
        anchors.top: addContactRow.bottom
        anchors.horizontalCenter: addContactRow.horizontalCenter
        anchors.topMargin: 70
        spacing: 20

        Rectangle {
            id: imageField
            radius: 90
            height: 180
            width: 180
            clip: true
            anchors.horizontalCenter: dataColumn.horizontalCenter

            Image {
                id: img
                width: parent.width * 0.6
                height: parent.height * 0.6
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: ""
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                selectImg.open()
                }
            }

            FileDialog{
                id: selectImg
                onAccepted: img.source = selectedFile
            }
        }

        TextField {
            id: nameField
            placeholderText: "Name"
            height: 40
            width: addContact.width * 0.6
            leftPadding: 20
            font.pixelSize: 18
            validator: RegularExpressionValidator {
                regularExpression: /^[A-Za-z ]{0,15}$/
            }

            background: Rectangle {
                anchors.fill: parent
                radius: 30
                color: "#2A2A2A"
                border.color: "#3498db"
            }
        }

        TextField {
            id: phoneField
            placeholderText: "Phone"
            height: 40
            width: addContact.width * 0.6
            leftPadding: 20
            font.pixelSize: 18
            validator: RegularExpressionValidator {
                regularExpression: /^[0-9]{10}/
            }

            background: Rectangle {
                anchors.fill: parent
                radius: 30
                color: "#2A2A2A"
                border.color: "#3498db"
            }
        }
    }
}

