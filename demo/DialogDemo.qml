import QtQuick 2.4
import Material 0.2
import Material.Extras 0.1
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

Item {

    Dialog {
        id: alertNoTitleBar
        width: dp(300)
        text: "Discard draft?"
        hasActions: true
        positiveButtonText: "discard"
        negativeButtonText: "cancel"
    }

    Dialog {
        id: alertWithTitleBar
        width: dp(300)
        title: "Use Google's location service?"
        text: "Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running."
        hasActions: true
        positiveButtonText: "agree"
        negativeButtonText: "disagree"
    }

    Dialog {
        id: textFieldDialog
        title: "Change Text"
        hasActions: true

        TextField {
            id: optionText
            width: parent.width
            placeholderText: "New Option to Confirm"
        }

        onAccepted: {
            dialogSnackBar.open("You entered: %1".arg(optionText.text))
        }
    }

    Dialog {
        id: scrollingDialog
        title: "Phone ringtone"

        ButtonGroup { id: optionGroup}

        RadioButton {
            text: "None"
            checked: true
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Callisto"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Dione"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Ganymede"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Hangouts Call"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Luna"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Oberon"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Phobos"
            ButtonGroup.group: optionGroup
        }
        RadioButton {
            text: "Pyxis"
            ButtonGroup.group: optionGroup
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: dp(20)

        Button {
            text: "Show alert without title bar"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                alertNoTitleBar.show()
            }
        }

        Button {
            text: "Show alert with title bar"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                alertWithTitleBar.show()
            }
        }

        Button {
            text: "Show text field dialog"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                textFieldDialog.show()
            }
        }

        Button {
            text: "Show scrolling dialog"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                scrollingDialog.show()
            }
        }
    }

    Snackbar {
        id: dialogSnackBar
    }
}
