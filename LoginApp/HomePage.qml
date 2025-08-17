import QtQuick
import QtQuick.Controls

Rectangle
{
    id: _home
    // anchors.centerIn: parent
    border.color: "black"
    radius: 20
    color: "whitesmoke"

    signal loginPage()
    signal registerPage()
    signal studentDataClicked()

    Label {
        text: "Student Application"
        font.pixelSize: 30
        color: "black"
        font.bold: true
        font.letterSpacing: 1.2
        anchors.horizontalCenter: _home.horizontalCenter
        topPadding: 80
    }

    Column {
        id: _colbtn
        anchors.centerIn: parent
        leftPadding: 20
        spacing: 30

        Button {
            id: _signUp
            Text {
                id: txt1
                text: qsTr("SignUp")
                color: "black"
                anchors.centerIn: parent
                font.bold: true
            }
            width: _home.width/ 3.5
            height: _home.height/30
            onClicked: {
                registerPage()
            }

            background: Rectangle {
                anchors.fill: parent
                radius: 40
                color: _signUp.pressed ? "orange" : "transparent"
                border.color: "black"
            }
        }
        Button {
            id: _signIn
            Text {
                id: txt2
                text: qsTr("SignIn")
                color: "black"
                anchors.centerIn: parent
                font.bold: true
            }
            width: _home.width/ 3.5
            height: _home.height/30
            font.weight: 600
            onClicked: {
                loginPage()
            }

            background: Rectangle {
                anchors.fill: parent        //important
                radius: 40
                color: _signIn.pressed ? "orange" : "transparent"
                border.color: "black"
            }
        }

        Button {
            id: _stdList
            Text {
                id: txt3
                text: qsTr("Student List")
                color: "black"
                anchors.centerIn: parent
                font.bold: true
            }
            width: _home.width/ 3.5
            height: _home.height/30
            font.weight: 600
            onClicked: {
                studentDataClicked()
            }

            background: Rectangle {
                anchors.fill: parent        //important
                radius: 40
                color: _signIn.pressed ? "orange" : "transparent"
                border.color: "black"
            }
        }
    }

    Component.onCompleted: {
        console.log("HomePage constructed")
    }

    Component.onDestruction: {
        console.log("HomePage destructed")
    }
}
