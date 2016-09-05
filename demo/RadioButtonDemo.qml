import QtQuick 2.4
import QtQuick.Layouts 1.1
import Material 0.2
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

ColumnLayout {
    spacing: 0

    Repeater {
        model: 2

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumHeight: grid.height + dp(80)
            Layout.minimumWidth: grid.width + dp(80)
            color: index == 0 ? "#EEE" : "#333"

            ButtonGroup { id: optionGroup}
            GridLayout {
                id: grid
                anchors.centerIn: parent
                rowSpacing: dp(20)
                columnSpacing: dp(20)
                columns: 2

                property int themeStyle:  index == 0 ? Material.Light :Material.Dark

                Label {
                    Layout.alignment : Qt.AlignHCenter
                    text: "Normal"
                    Material.theme:parent.themeStyle
                }

                Label {
                    Layout.alignment : Qt.AlignHCenter
                    text: "Disabled"
                    Material.theme:parent.themeStyle
                }

                RadioButton {
                    checked: true
                    text: "Option 1"
                    Material.theme:parent.themeStyle
                    ButtonGroup.group: optionGroup
                }

                RadioButton {
                    checked: true
                    enabled: false
                    text: "Disabled"
                    Material.theme:parent.themeStyle
                }

                RadioButton {
                    text: "Option 2"
                    Material.theme:parent.themeStyle
                    ButtonGroup.group: optionGroup
                }

                RadioButton {
                    enabled: false
                    text: "Disabled"
                    Material.theme:parent.themeStyle
                }
            }
        }
    }
}
