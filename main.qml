import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 360
    height: 480
    title: qsTr("Hello World")

    Column{
        anchors.centerIn: parent

        Image {
            id: img
            source: "1.png"
        }

    }

}
