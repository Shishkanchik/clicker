import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    LaptopUI {
        anchors.centerIn: parent
        onClicked: {
            laptop.addClick()
            countlaptop.text = "ноутбуков " + laptop.getClick()
        }
    }
    Text {
        id: countlaptop
        anchors.right: parent.right
        anchors.top: parent.top
        text: "ноутбуков " + laptop.getClick()
    }

    StoreUI {
        anchors.left: parent.left
        anchors.top: parent.top
    }
}
