import QtQuick 6.2
import QtQuick.Controls 6.2
import nienazwane

Window {
    width: 1200
    height: 700
    visible: true
    color: "#000000"
    title: qsTr("MultiBroken")
    

    Timer {
        id: timer
        interval: 5000
        repeat: false
        running: false

        onTriggered: {
            work.text = ""
        }
    }

    Button {
        id: lista
        x: 42
        y: 54
        width: 288
        height: 48
        font.pointSize: 16
        font.family: "JetBrains Mono"

        background: Rectangle {
            color: "transparent"
        }

        contentItem: Text {
            font: parent.font
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "white"
            text: "Pokaż liste środowisk"
        }
    }

    Button {
        id: tworz
        x: 29
        y: 102
        width: 297
        height: 48
        font.pointSize: 16
        font.family: "JetBrains Mono"

        background: Rectangle {
            color: "transparent"
        }

        contentItem: Text {
            font: parent.font
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "white"
            text: "Stwórz nowe środowisko"
        }
    }

    Text {
        id: work
        x: 949
        y: 1
        width: 0
        height: 57
        anchors.centerIn: parent
        font.pointSize: 32
        color: "white"
        anchors.verticalCenterOffset: -267
        anchors.horizontalCenterOffset: 350
    }

    Button {
        id: uruchom
        x: 60
        y: 6
        width: 251
        height: 48
        font.pointSize: 16

        background: Rectangle {
            color: "transparent"
        }

        contentItem: Text {
            font: parent.font
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "white"
            text: "Uruchom"
        }

        onClicked: {
            work.text = "Działa!"
            timer.start()
        }
    }

    Button {
        id: button2
        x: 840
        y: 600
        width: 275
        height: 60
        text: qsTr("Wyjscie")
        font.family: "JetBrains Mono"
        font.pointSize: 20

        background: Rectangle {
            radius: 10
        }

        onClicked: {
            Qt.quit();
        }
    }





}
