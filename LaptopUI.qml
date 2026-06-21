import QtQuick

Rectangle {
    id:root

    color: "gray"
    signal clicked

    MouseArea {

        anchors.fill: parent
        onClicked: {
            root.clicked()
            animScale.start()
        }
    }

    SequentialAnimation {
        id: animRotation
        loops: Animation.Infinite
        running: true
        NumberAnimation {
            target: root
            property: "rotation"
            from: -30
            to: 30
            duration: 2000
            easing.type: Easing.InOutSine
        }
        NumberAnimation {
            target: root
            property: "rotation"
            from: 30
            to: -30
            duration: 2000
            easing.type: Easing.InOutSine
        }
    }
    SequentialAnimation {
        id: animScale
        NumberAnimation {
            target: root
            property: "scale"
            to: 0.8
            duration: 25
        }
        NumberAnimation {
            target: root
            property: "scale"
            to: 1
            duration: 25
        }
    }
}
