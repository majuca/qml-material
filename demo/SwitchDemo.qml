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

            GridLayout {
                id: grid
                anchors.centerIn: parent
                rowSpacing: dp(40)
                columnSpacing: dp(40)
                columns: 3

                property int themeStyle:  index == 0 ? Material.Light :Material.Dark


                // Empty filler
                Item { width: 1; height: 1 }

                Label {
                    text: "Normal"
                    Material.theme:parent.themeStyle
                }

                Label {
                    text: "Disabled"
                    Material.theme:parent.themeStyle
                }

                Label {
                    text: "On"
                    Material.theme:parent.themeStyle
                }

                Switch {
                    checked: true
                    Material.theme:parent.themeStyle
                }

                Switch {
                    checked: true
                    enabled: false
                    Material.theme:parent.themeStyle
                }

                Label {
                    text: "Off"
                    Material.theme:parent.themeStyle
                }

                Switch {
                    Material.theme:parent.themeStyle
                }

                Switch {
                    enabled: false
                    Material.theme:parent.themeStyle
                }
            }
        }
    }
}
