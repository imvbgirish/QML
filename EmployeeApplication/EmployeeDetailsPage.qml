import QtQuick
import QtQuick.Layouts

Rectangle {
    id: employeeDetailsDisplay
    color: "#202D36"
    border.color: "Black"
    border.width: 2
    topLeftRadius: 10
    topRightRadius: 10

    property string  employeeName: ""
    property string  employeeId: ""
    property string  employeeNumber: ""
    property string  employeeEmail: ""
    property string  employeeJoinDate: ""
    property string  employeeBasicSalary: ""
    property string  employeeVaraiableSalary: ""
    property string  employeeTotalSalary: ""

    Column{
        id: rowLayout
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 40

        Text {
            id: employee
            text: "EMPLOYEE DETAILS"
            font.bold: true
            font.pixelSize: 30
            color: "#FFFFFF"
        }

        Text {
            id: name
            text: "Name:     " +employeeName
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: id
            text: "ID:     " +employeeId
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: number
            text: "Number:     " +employeeNumber
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: email
            text: "Email:     " +employeeEmail
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: joinDate
            text: "Join Date:     "+employeeJoinDate
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: basicSalary
            text: "Join Date:     "+employeeBasicSalary
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: variableSalary
            text: "Join Date:     "+employeeVaraiableSalary
            font.bold: true
            color: "#FFFFFF"
        }

        Text {
            id: totalSalary
            text: "Join Date:     "+employeeTotalSalary
            font.bold: true
            color: "#FFFFFF"
        }
    }
}
