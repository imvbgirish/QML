import QtQuick

Rectangle {
    id: registeredStudents
    anchors.fill: parent
    color: "tomato"

    ListView{
        id: studentView
       interactive: true
        model: studentModel
        header: tableHeader
        delegate: studentDelegate
        clip: true
        spacing: 5
        anchors.fill: parent
    }

    Component {
        id: tableHeader
        Header{

        }
    }

    Component {
        id: studentDelegate

        Rectangle {
            id: background
            width: studentView.width
            height: 50
            color: "tomato"
            border.color: "black"
            Row
            {
                spacing: 20
                anchors.centerIn: parent

                Text {
                    text: model.index + 1
                }

                Text {
                    text: studentName
                }

                Text {
                    text: fatherName
                }


                Text {
                    text: email
                }

                Text {
                    text: phoneNumber
                }
            }
        }
    }
}

