import QtQuick 6.2
import QtQuick.Controls 6.2

Button {
    id: button
    width: 208
    height: 66
    opacity: 1
    visible: true
    text: "Uruchom"
    font.pixelSize: 32
    layer.smooth: true
    layer.textureMirroring: ShaderEffectSource.NoMirroring
    layer.format: ShaderEffectSource.RGBA
    layer.enabled: true
    font.styleName: "Italic"
    font.family: "JetBrains Mono"
    font.strikeout: false
    hoverEnabled: true
    icon.cache: false
    highlighted: false
    autoExclusive: false
    icon.source: ""
    wheelEnabled: false
    icon.color: "#6e90b2"
    checked: false
    display: AbstractButton.TextBesideIcon
    flat: false
}
