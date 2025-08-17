import QtQuick
import QtQuick.Controls


Rectangle
{
    id: background
    border.color: "black"
    radius: 20
    color: "whitesmoke"

    // signal submitBtnClicked(string studentName, string fatherName, string email,
    //                         string phoneNumber, string password, string confirmPassword)
    signal backBtnClicked()

    Label {
        text: "SignUp"
        font.pixelSize: 30
        color: "black"
        font.bold: true
        font.letterSpacing: 1.2
        anchors.horizontalCenter: background.horizontalCenter
        topPadding: 80
    }

    Column
    {
        id: col
        spacing: 6
        anchors.centerIn: parent

        Text {
            id: _stdName
            text: qsTr("Student Name")
            font.bold: true
        }

        TextField {
            id: _studentName
            width: background.width / 1.5
            height: background.height / 20
            placeholderText: "Student Name"
            validator: RegularExpressionValidator {
                regularExpression: /^[A-Za-z ]+$/
            }
        }

        Text {
            id: _number
            text: qsTr("Phone Number")
            font.bold: true
            topPadding: 8
        }

        TextField {
            id: _phoneNumber
            width: background.width / 1.5
            height: background.height / 20
            placeholderText: "Phone Number"
            maximumLength: 10
            validator: RegularExpressionValidator {
                regularExpression: /^[0-9]{10}/
            }
        }

        Text {
            id: _fname
            text: qsTr("Father Name")
            font.bold: true
            topPadding: 8
        }

        TextField {
            id: _fatherName
            width: background.width / 1.5
            height: background.height / 20
            placeholderText: "Father Name"
            validator: RegularExpressionValidator {
                regularExpression: /^[A-Za-z ]+$/
            }
        }

        Text {
            id: _emailid
            text: qsTr("Email")
            font.bold: true
            topPadding: 8
        }

        TextField {
            id: _email
            width: background.width / 1.5
            height: background.height / 20
            placeholderText: "Email"
            maximumLength: 15
            validator: RegularExpressionValidator {
                regularExpression: /^[^@]+@[^@]+\.[^@]{4,}$/
            }
            onEditingFinished: {

            }
        }

        Text {
            id: _password
            text: qsTr("Password")
            font.bold: true
            topPadding: 8
        }

        TextField {
            id: _userPassword
            width: background.width / 1.5
            height: background.height / 20
            placeholderText: "Password"
            maximumLength: 8
            validator: RegularExpressionValidator {
                regularExpression: /^[A-Za-z0-9@#]+$/
            }
        }

        Text {
            id: _confirm
            text: qsTr("Confirm Password")
            font.bold: true
            topPadding: 8
        }

        TextField {
            id: _confirmPassword
            width: background.width / 1.5
            height: background.height / 20
            placeholderText: "Confirm Password"
            maximumLength: 8
            validator: RegularExpressionValidator {
                regularExpression: /^[A-Za-z0-9@#]+$/
            }
        }

        Row {
            id: _row
            spacing: 18
            topPadding: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: submit
                Text {
                    id: txtSubmit
                    text: qsTr("Submit")
                    color: "black"
                    anchors.centerIn: parent
                    font.bold: true
                }
                width: background.width/ 3.5
                height: background.height/30
                onClicked: {
                  studentModel.addStudentToList(
                                _studentName.text,
                                _fatherName.text,
                                _email.text,
                                _phoneNumber.text,
                                _userPassword.text,
                                _confirmPassword.text
                                )
                }

                background: Rectangle {
                    anchors.fill: parent
                    radius: 40
                    color: clear.pressed ? "orange" : "transparent"
                    border.color: "black"
                }
            }

            Button {
                id: back
                Text {
                    id: txtBack
                    text: qsTr("Back")
                    color: "black"
                    anchors.centerIn: parent
                    font.bold: true
                }
                width: background.width/ 3.5
                height: background.height/30
                onClicked: {
                    backBtnClicked()
                }

                background: Rectangle {
                    anchors.fill: parent
                    radius: 40
                    color: back.pressed ? "orange" : "transparent"
                    border.color: "black"
                }
            }
        }

        Column {
            id: _column
            spacing: 18
            topPadding: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: clear
                Text {
                    id: txtclear
                    text: qsTr("Clear")
                    color: "black"
                    anchors.centerIn: parent
                    font.bold: true
                }

                width: background.width/ 3.5
                height: background.height/30
                onClicked: {
                    _studentName.clear()
                    _fatherName.clear()
                    _email.clear()
                    _phoneNumber.clear()
                    _userPassword.clear()
                    _confirmPassword.clear()
                }

                background: Rectangle {
                    anchors.fill: parent
                    radius: 40
                    color: clear.pressed ? "orange" : "transparent"
                    border.color: "black"
                }
            }
        }
    }

    Component.onCompleted: {
        console.log("Register constructed")
    }

    Component.onDestruction: {
        console.log("Register destructed")
    }
}
