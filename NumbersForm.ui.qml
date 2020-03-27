import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    width: 360
    height: 480
    visible: true
    property alias btm: btm
    property alias img: img

    RowLayout {
        anchors.centerIn: parent
        Image {
            id: img
            source: "1.jpg"
            anchors.centerIn: parent
        }
        Button {
            id: btm
            anchors.top: img.bottom
            anchors.horizontalCenter: img.horizontalCenter
            text: "Generate"
        }
    }
}
