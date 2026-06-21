import QtQuick

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "#8B4513"

    Text {
        id: countlaptop
        anchors.right: parent.right
        anchors.top: parent.top
        text: "ноутбуков " + laptop.clicks
        font.pixelSize: 20
    }

    LaptopUI {
        width: 64 + win.width * 0.15
        height:64 + win.height * 0.25
        anchors.centerIn: parent
        onClicked: {
            laptop.addClick()
        }
    }

    StoreUI {
        anchors.left: parent.left
        anchors.top: parent.top
    }
}
