

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import nienazwane

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#fdfdfd"

    MyButton {
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

    MyButton {
        id: button1
        x: 47
        y: 208
        width: 225
        height: 47
        text: "Przycisk numero two"
        font.family: "JetBrains Mono"
    }
    states: [
        State {
            name: "clicked"
        }
    ]
}
