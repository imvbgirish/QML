import QtQuick
import QtQuick.Controls

Rectangle
{
    id: _loginRect
    // height: parent.height / 1.1
    // width: parent.width / 3.2
    // anchors.centerIn: parent
    border.color: "black"
    radius: 20
    color: "whitesmoke"

    signal loginSubmitBtnClicked(string phoneNumber, string password)
    signal loginBackBtnClicked()

    Label {
        text: "SignIn"
        font.pixelSize: 30
        color: "black"
        font.bold: true
        font.letterSpacing: 1.2
        anchors.horizontalCenter: _loginRect.horizontalCenter
        topPadding: 80
    }

    Column
    {
        id: col
        spacing: 6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.verticalCenter

        Text {
            id: _name
            text: qsTr("Phone Number")
            font.bold: true
        }

        TextField {
            id: _userName
            width: _loginRect.width / 1.5
            height: _loginRect.height / 20
            placeholderText: "Phone Number"
            validator: RegularExpressionValidator {
                regularExpression: /^[0-9]{10}/
            }
        }

        Text {
            id: _password
            text: qsTr("Password")
            font.bold: true
            topPadding: 8
        }

        TextField {
            id: _loginPassword
            width: _loginRect.width / 1.5
            height: _loginRect.height / 20
            placeholderText: "Password"
            validator: RegularExpressionValidator {
                regularExpression: /^[A-Za-z0-9@#_]$/
            }
        }

        Row {
            id: _lrow
            spacing: 18
            topPadding: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: submit

                Text {
                    id: txtlsubmit
                    text: qsTr("Submit")
                    anchors.centerIn: parent
                    color: "black"
                    font.bold: true
                }
                width: _loginRect.width/ 3.5
                height: _loginRect.height/30
                onClicked: {
                    loginSubmitBtnClicked(_userName.text, _loginPassword.text)
                }

                background: Rectangle {
                    anchors.fill: parent
                    color: submit.pressed ? "orange" : "transparent"
                    radius: 40
                    border.color: "black"
                }
            }

            Button {
                id: back
                Text {
                    id: txtlback
                    text: qsTr("Back")
                    anchors.centerIn: parent
                    color: "black"
                    font.bold: true
                }
                width: _loginRect.width/ 3.5
                height: _loginRect.height/30
                font.weight: 600
                onClicked: {
                    loginBackBtnClicked()
                }

                background: Rectangle {
                    anchors.fill: parent
                    color: back.pressed ? "orange" : "transparent"
                    radius: 40
                    border.color: "black"
                }
            }
        }
    }
    Component.onCompleted: {
        console.log("LoginPage constructed")
    }

    Component.onDestruction: {
        console.log("LoginPage destructed")
    }
}
