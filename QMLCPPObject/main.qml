import QtQuick

Window {
       width: 640
       height: 480
       visible: true
       title: qsTr("Hello World")
       objectName: "window"

       Rectangle{
              id: rectangle
              objectName: "rect"
              height: 100
              width: 100
              color: "red"
              x: 100
              y: 100
       }


       Item{
              id: item
              objectName: "item"
       }

       Column{
              id: col
              objectName: "column"
       }

       Grid{
              id: grid
              objectName: "grid"
       }

       GridView{
              id: gridView
              objectName: "gridview"
       }

       ListView{
              id: listView
              objectName: "listview"
       }
}
