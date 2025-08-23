import QtQuick
import QtQuick.Controls

Window {
    id: _win
    width: 500
    height: 900
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: _load
        width: 432
        height: 855
        anchors.centerIn: parent
        source: "HomePage.qml"
    }

    Connections {
        target: _load.item

        function onLoginPage(){
            _load.source = "Login.qml"
        }

        function onRegisterPage(){
            _load.source = "Register.qml"
        }

        function onStudentDataClicked(){
            _load.source = "StudentsList.qml"
        }

        // function onSubmitBtnClicked(studentName, fatherName, email, phoneNumber, password, confirmPassword) {
        //     studentModel.addStudentToList(studentName, fatherName, email, phoneNumber, password, confirmPassword)
        // }

        function onBackBtnClicked(){
            _load.source = "HomePage.qml"
        }

        function onLoginBackBtnClicked(){
            _load.source = "HomePage.qml"
        }

        function onLoginSubmitBtnClicked(phoneNumber,password){
            studentModel.checkLoginData(phoneNumber,password)
        }
    }

    Connections {
        target: studentModel

        onRegistrationSuccess: {
            console.log("Registration Success")
            _load.source = "Login.qml"
        }

        onLoginSuccess: {
            console.log("Login Success")
            _load.source = ""
        }
    }
}
