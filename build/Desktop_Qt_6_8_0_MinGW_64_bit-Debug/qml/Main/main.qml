/* This file is generated and only relevant for integrating the project into a Qt 6 and cmake based
C++ project. */

import QtQuick 6.2
import QtQuick.Controls 6.2
import nienazwane

Window {
    width: 680
    height: 440
    visible: true
    title: qsTr("Hello World")
    color: "#000000"

    Button {
        id: button
        x: 47
        y: 66
        width: 225
        height: 47
        text: "Przycisk numero uno"
        font.family: "JetBrains Mono"
    }

    Column {
        id: column
        x: 8
        y: 8
        width: 303
        height: 1041
    }

    Button {
        id: button1
        x: 47
        y: 208
        width: 225
        height: 47
        text: "Przycisk numero two"
        font.family: "JetBrains Mono"
    }
}
