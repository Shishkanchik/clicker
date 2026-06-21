import QtQuick
import QtQuick.Controls

Rectangle {
    id:root
    width: 200
    height: 0

    property bool opened: false
    Rectangle {
        id: open
        width: 200
        height:40
        color: "green"
        anchors.top: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked:{
                if(!opened)
                {

                    opened = true
                    animOpen.start()
                    buttonMouse.visible = true
                    itemMouse.visible = true

                }
                else
                {

                    opened = false
                    animClose.start()
                    buttonMouse.visible = false
                    itemMouse.visible = false
                }

            }
        }

        Text {
            anchors.centerIn: parent
            text: "магазин"
        }

        NumberAnimation {
            id: animOpen
            target: root
            property: "height"
            to: 300
            duration: 500
            easing.type: Easing.OutElastic
        }

        NumberAnimation {
            id: animClose
            target: root
            property: "height"
            to: 0
            duration: 400
            easing.type: Easing.InOutSine
        }

    }



    enum Item { MOUSE }

    ItemStore {
        id: itemMouse
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -60
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -90
        sprite: "sprite/mouse.png"
        imgScale: 1 + (parent.width + parent.height) / 250
        textCost: "цена: " + store.getCost(StoreUI.Item.MOUSE)
        textPower: "сила: " + store.getPower(StoreUI.Item.MOUSE)
        pixelSize: 12 + (parent.width + parent.height) / 100
    }

    Button {
        id: buttonMouse
        visible: false
        width: 100
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 25
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -70

        onClicked: store.buy(laptop, StoreUI.Item.MOUSE)

        Text {
            anchors.centerIn: parent
            text: "купить"

        }


    }
}