import QtQuick

Rectangle {

    width: 120
    height: 80
    color: "gray"

    MouseArea {

        anchors.fill: parent
        onClicked: {
            Laptop.addClick()
        }
    }
}
