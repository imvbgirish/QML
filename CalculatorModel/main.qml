import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5

ApplicationWindow {
    visible: true
    width: 360
    height: 600
    title: "Calculator"

    property string expression: ""

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            color: "black"
            Text {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                text: expression
                font.pixelSize: 32
                color: "white"
                font.bold: true
                horizontalAlignment: Text.AlignRight
                anchors.rightMargin: 20
            }
        }

        GridView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            cellWidth: 80
            cellHeight: 80
            model: calculatorModel
            delegate: calcDelegate
        }

        Component{
            id: calcDelegate

            Rectangle {
                width: 80
                height: 80
                color: "lightgray"
                border.color: "gray"
                radius: 40

                Text {
                    anchors.centerIn: parent
                    text: label
                    font.bold: true
                    font.pixelSize: 24
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        expression = calculatorModel.calculateInputData(expression, label)
                    }
                }
            }
        }
    }
}












//Using GridLayout


// import QtQuick
// import QtQuick.Controls
// import QtQuick.Layouts

// ApplicationWindow {
//     visible: true
//     width: 400
//     height: 600
//     title: "Calculator"

//     ColumnLayout {
//         anchors.fill: parent
//         spacing: 10

//         TextField {
//             id: display
//             Layout.fillWidth: true
//             readOnly: true
//             font.pixelSize: 28
//             text: "0"
//         }

//         GridLayout {
//             Layout.fillWidth: true
//             Layout.fillHeight: true
//             columns: 4
//             rowSpacing: 8
//             columnSpacing: 8

//             Repeater {
//                 model: calculatorModel
//                 delegate: Button {
//                     text: model.label
//                     font.pixelSize: 24
//                     Layout.fillWidth: true
//                     Layout.fillHeight: true
//                     onClicked: calculatorModel.handleButtonClick(text)
//                 }
//             }
//         }
//     }
// }
