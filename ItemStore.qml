import QtQuick
Item {
    id:root

    width: img.width * img.scale
    height: img.height * img.scale

    property alias sprite:  img.source
    property alias imgScale: img.scale


    property alias textCost: textCost.text
    property alias textPower: textPower.text
    property int pixelSize: 12

    Image {
        id: img
        transformOrigin: Item.TopLeft
    }

    Text {
        id: textCost
        anchors.left: parent.right
        anchors.top: parent.top
        font.pixelSize: pixelSize
    }

    Text {
        id: textPower
        anchors.left: parent.right
        anchors.top: textCost.bottom
        font.pixelSize: pixelSize
    }
}