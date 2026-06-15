import QtQuick

Rectangle {
    id:root
    width: 200
    height:40
    color: "gray"

    MouseArea {
        anchors.fill: parent
        onClicked: store.buy(laptop, 0)
    }

}
