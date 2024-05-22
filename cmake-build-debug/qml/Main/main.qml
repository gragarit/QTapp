import QtQuick 6.2
import QtQuick.Controls 6.2
import Custom 1.0
import QtQuick.Effects
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import QtQuick.Shapes 1.15

Window {
    id: mainWindow
    width: 1600
    height: 1024
    visible: true
    color: "transparent"
    property alias text1Fontfamily: text1.font.family
    title: qsTr("MultiBroken")
    flags: Qt.FramelessWindowHint

    MouseArea {
        id: dragArea
        anchors.fill: parent
        onPressed: {
            mainWindow.startSystemMove();
        }
    }

    Rectangle {
        anchors.fill: parent
        radius: 30
        color: "#041815"
        border.color: "#000000"
        border.width: 1

        Image {
            id: logo_wht_1
            x: 527
            y: 0
            source: "qrc:img/content/icons/logo_wht.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Multi {
        id: multiObject
    }

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
        x: 91
        y: 211
        width: 409
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
            textFormat: Text.RichText
            color: "white"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Source Sans 3 ExtraBold'; font-size:32pt; font-style:italic;\">DODAJ ŚRODOWISKO</span></p></body></html>"
        }

        MouseArea {
            id: hoverArea_lista
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                enterAnim_lista.start()
            }

            onExited: {
                exitAnim_lista.start()
            }
        }

        NumberAnimation {
            id: enterAnim_lista
            target: lista
            property: "x"
            to: lista.x + 68
            duration: 500
            easing.type: Easing.InOutBack
        }

        NumberAnimation {
            id: exitAnim_lista
            target: lista
            property: "x"
            to: 91
            duration: 500
            easing.type: Easing.InOutBack
        }
    }

    Button {
        id: tworz
        x: 91
        y: 323
        width: 344
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
            textFormat: Text.RichText
            color: "white"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Source Sans 3 ExtraBold'; font-size:32pt; font-style:italic;\">LISTA ŚRODOWISK</span></p></body></html>"
        }

        MouseArea {
            id: hoverArea_tworz
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                enterAnim_tworz.start()
            }

            onExited: {
                exitAnim_tworz.start()
            }

            onClicked: {
                var component = Qt.createComponent("dodawanie_srod.qml");
                var window = component.createObject(mainWindow);
                window.show();
            }
        }

        NumberAnimation {
            id: enterAnim_tworz
            target: tworz
            property: "x"
            to: tworz.x + 68
            duration: 500
            easing.type: Easing.InOutBack
        }

        NumberAnimation {
            id: exitAnim_tworz
            target: tworz
            property: "x"
            to: 91
            duration: 500
            easing.type: Easing.InOutBack
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
        x: 91
        y: 100
        width: 198
        height: 48
        font.pixelSize: 42

        background: Rectangle {
            color: "transparent"
        }

        contentItem: Text {
            id: text1
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            font.family: "Source Sans 3"
            font.styleName: "ExtraLight Italic"
            color: "white"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Source Sans 3 ExtraBold'; font-size:32pt; font-style:italic;\">URUCHOM</span></p></body></html>"
            font.pixelSize: 32
        }

        MouseArea {
            id: hoverArea_uruchom
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                enterAnim.start()
            }

            onExited: {
                exitAnim.start()
            }

            onClicked: {
                multiObject.newBroken();
            }
        }

        NumberAnimation {
            id: enterAnim
            target: uruchom
            property: "x"
            to: uruchom.x + 68
            duration: 500
            easing.type: Easing.InOutBack
        }

        NumberAnimation {
            id: exitAnim
            target: uruchom
            property: "x"
            to: 91
            duration: 500
            easing.type: Easing.InOutBack
        }
    }
    Image {
        id: vector
        x: 1447
        y: 44
        width: 32
        height: 32
        source: 'qrc:img/content/icons/Vector.png'
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }
    }

    Image {
        id: minus
        x: 1380
        y: 55
        width: 68
        height: 4
        visible: true
        source: 'qrc:img/content/icons/Minus.png'
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: {
                visibility = Window.Minimized;
            }
        }
    }
}
