import QtQuick 2.6
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.1
import Material 0.2
import Material.ListItems 0.1 as ListItem
import Material.Extras 0.1

ColumnLayout {

    Dialog {
        id: datePickerDialog
        hasActions: true
        contentMargins: 0
        floatingActions: true

        DatePicker {
            frameVisible: false
            dayAreaBottomMargin : dp(48)
        }

    }

    Dialog {
        id: landscapeDatePickerDialog
        hasActions: true
        contentMargins: 0
        floatingActions: true

        DatePicker {
            frameVisible: false
            dayAreaBottomMargin : dp(48)
            isLandscape: true
        }

    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: dp(16)

        Button {
            Layout.alignment: Qt.AlignCenter
            text: "Show DatePicker Dialog"
            onClicked: {
                datePickerDialog.show()
            }
        }

        Button {
            Layout.alignment: Qt.AlignCenter
            text: "Show Landscape DatePicker Dialog"
            onClicked: {
                landscapeDatePickerDialog.show()
            }
        }

        DatePicker {
            Layout.alignment: Qt.AlignCenter
        }

        DatePicker {
            Layout.alignment: Qt.AlignCenter
            isLandscape: true
        }
    }
}
