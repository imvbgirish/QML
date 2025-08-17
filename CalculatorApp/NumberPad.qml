import QtQuick 2.15
import QtQuick.Layouts

Rectangle {
    id:numberpad
    anchors.fill: parent
    radius: 10
    color: "transparent"

    readonly property color greenColor: "#2CDE85"
    property int spacing: 5

    component DigitButton: CustomButton {

    }

    component OperatorButton: CustomButton {

    }

    RowLayout{
        spacing: numberpad.spacing

        GridLayout {
            id: mainGrid
            columns: 4
            columnSpacing: numberpad.spacing
            rowSpacing: numberpad.spacing

            OperatorButton{
                text: "AC"
                textColor: "red"
                otherColor: "green"
            }
            OperatorButton{
                text: "<"
                textColor: "red"
                otherColor: "green"
            }
            OperatorButton{text: "%"}
            OperatorButton{text: "÷"}

            DigitButton{text: "7"}
            DigitButton{text: "8"}
            DigitButton{text: "9"}
            OperatorButton{text: "×"}

            DigitButton{text: "4"}
            DigitButton{text: "5"}
            DigitButton{text: "6"}
            OperatorButton{text: "-"}

            DigitButton{text: "1"}
            DigitButton{text: "2"}
            DigitButton{text: "3"}
            OperatorButton{text: "+"}

            OperatorButton{text: "±"}
            DigitButton{text: "0"}
            OperatorButton{text: "."}
            OperatorButton{
                text: "="
                textColor: "red"
            }
        }
    }
}
