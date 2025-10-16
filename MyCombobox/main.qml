import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // ComboBox {
    //     model: ["First", "Second", "Third"]
    // }

    ComboBox {
        editable: true
        model: ListModel {
            id: model
            ListElement { text: "Banana" }
            ListElement { text: "Apple" }
            ListElement { text: "Coconut" }
        }
        onAccepted: {
            if (find(editText) === -1)
                model.append({text: editText})
        }
    }
}
