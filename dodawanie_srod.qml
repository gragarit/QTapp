import QtQuick 6.2
import QtQuick.Controls 6.2
import Custom 1.0
import QtQuick.Effects
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import QtQuick.Shapes 1.15

Window {
    width: 1600
    height: 1024
    visible: true
    color: "transparent"
    property alias text1FontFamily: text1.font.family
    title: qsTr("MultiBroken")
    flags: Qt.FramelessWindowHint

    Rectangle{
        anchors.fill: parent
        radius: 30
        color: "#041815"
        border.color: "#000000"
        border.width: 1

        Image {
            id: logo
            x: 527
            y: 0
            source: "qrc:img/content/icons/logo_wht.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}