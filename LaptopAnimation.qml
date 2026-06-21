import QtQuick


SequentialAnimation {
    property string animProperty: "rotation"
    property int animFrom: -45

    NumberAnimation {
        target: root
        property: animProperty
        from: -45
        to: 45
        duration: 2000
    }
    NumberAnimation {
        target: root
        property: "rotation"
        from: 45
        to: -45
        duration: 2000
    }
}
// SequentialAnimation {
//     id: animScale
//     NumberAnimation {
//         target: root
//         property: "scale"
//         to: 0.8
//         duration: 25
//     }
//     NumberAnimation {
//         target: root
//         property: "scale"
//         to: 1
//         duration: 25
//     }
// }
