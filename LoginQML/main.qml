import QtQuick
import QtQuick.Controls

Window {
    width: 700
    height: 400
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: background
        height: parent.height / 1.5
        width: parent.width / 1.5
        anchors.centerIn: parent
        border.color: "black"
        radius: 10

        Column
        {
            id: col
            spacing: 10
            anchors.centerIn: parent

            Text {
                id: _username
                text: qsTr("Username")
            }

            TextField {
                id: _userLabel
                width: background.width / 1.8
                height: background.height / 8
                placeholderText: "Username"
            }

            Text {
                id: _password
                text: qsTr("Password")
            }

            TextField {
                id: _userPassword
                width: background.width / 1.8
                height: background.height / 8
                placeholderText: "Password"
            }

            Row {
                id: _row
                spacing: 20
                topPadding: 15
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    id: submit
                    text: "Submit"
                    width: background.width/ 6
                    height: background.height/10
                    onClicked: {
                        submitBtnClicked()
                    }
                }

                Button {
                    id: cancel
                    text: "Cancel"
                    width: background.width/ 6
                    height: background.height/10
                    onClicked: {
                        cancelBtnClicked()
                    }
                }
            }
        }
    }

    function submitBtnClicked(){
        console.log("Submit button is Clicked.")
        console.log("Username : "+ _userLabel.displayText)
        console.log("Password : "+ _userPassword.displayText)
        loginHandler.username = _userLabel.displayText;
        loginHandler.password = _userPassword.displayText;
    }

    function cancelBtnClicked(){
        console.log("Cancel button is Clicked.")

    }
}
