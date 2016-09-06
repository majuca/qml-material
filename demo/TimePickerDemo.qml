import QtQuick 2.6
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import Material 0.2


Item {

    TimePickerDialog {
        id: timePicker
        onTimePicked: {
            updateLabelForDate(timePicked)
        }
        prefer24Hour: twentyFourHourSwitch.checked
    }

    Column {
        anchors.centerIn: parent
        spacing: dp(20)

        Button {
            text: "Show Time Picker Dialog"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                timePicker.show()
            }
        }

        Label {
            id: timeLabel
            style: "display1"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: dp(16)

            Label {
                text: "24 hour clock:"
                style: "dialog"
            }

            Switch {
                id: twentyFourHourSwitch
                checked: false
            }
        }
    }

    Component.onCompleted: {
        var date = new Date(Date.now())
        updateLabelForDate(new Date(Date.now()))
    }

    function updateLabelForDate(date) {
        timeLabel.text = date.toLocaleTimeString(Qt.locale(), "hh:mm ap")
    }
}
