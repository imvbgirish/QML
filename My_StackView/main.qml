import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackView {
           id: stack
           initialItem: mainView
           anchors.fill: parent
       }

       Component {
           id: mainView

           Row {
               spacing: 10

               Button {
                   text: "Push"
                   onClicked: stack.push(mainView)
               }
               Button {
                   text: "Pop"
                   enabled: stack.depth > 1
                   onClicked: stack.pop()

               }
               Text {
                   text: stack.depth
               }
           }
       }
}
