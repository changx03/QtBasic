import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: myItem
        width: 150
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: rect
            height: 150
            width: 150
            anchors.top: parent.top
            anchors.topMargin: 20
            color: txt.length >= 10 ? "red" : "blue"

            TextInput {
                id: txt
                anchors.centerIn: parent
                color: "white"
                text: "Hello world!"
                font.pointSize: 12

                onTextChanged:  {
                    console.log(txt.text)
                }

                Keys.onEscapePressed: {
                    focus = false
                }
            }
        }

        Image {
            id: img
            height: 150
            width: 150
            anchors.top: rect.bottom
            source: "Images/cat.jpg"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Meow!!!")
                }
            }
        }
    }
}
