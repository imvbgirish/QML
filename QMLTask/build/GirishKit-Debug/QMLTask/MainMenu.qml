import QtQuick
import QtQuick.Layouts

ColumnLayout {
    id: col
    spacing: 20
    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

    signal button1Clicked()
    signal button2Clicked()
    signal button3Clicked()
    signal button4Clicked()
    signal button5Clicked()

    CustomButton {
        textInput: "Button1"
        backgroundColor: "gray"
        onClicked: {
            button1Clicked()
        }
    }
    CustomButton {
        textInput: "Button2"
        backgroundColor: "gray"
        onClicked: {
            button2Clicked()
        }
    }
    CustomButton {
        textInput: "Button3"
        backgroundColor: "gray"
        onClicked: {
            button3Clicked()
        }
    }
    CustomButton {
        textInput: "Button4"
        backgroundColor: "gray"
        onClicked: {
            button4Clicked()
        }
    }
    CustomButton {
        textInput: "Button5"
        backgroundColor: "gray"
        onClicked: {
            button5Clicked()
        }
    }
}
