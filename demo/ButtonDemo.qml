import QtQuick 2.6
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import Material 0.2

Item {

    Column {
        anchors.centerIn: parent
        spacing: dp(20)

        Button {
            text: "Simple Button"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: snackbar.open("Simple, isn't it?")
        }

        Button {
            text: "Raised Button"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: snackbar.open("This is a snackbar")
        }

        Button {
            text: "Disabled Raised Button"
            enabled: false
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Wide Button"

            width: dp(200)
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: snackbar.open("That button is wide, and so is this snackbar!")
        }

        Button {
            id: focusableButton
            text: "Focusable with really long text"            
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: snackbar.open("The text is really very very very very very long and now it needs to wrap, so this should show as two lines!")
        }

        Button {
            text: "Colored button"
            anchors.horizontalCenter: parent.horizontalCenter
            highlighted: true
            onClicked: snackbar.open("That button is colored!")
        }

        Button {
            text: "Focusable button #2"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: snackbar.open("That button is colored!")
        }
    }

    ActionButton {
        anchors {
            right: parent.right
            bottom: snackbar.top
            margins: dp(32)
        }

        action: Action {
            id: addContent
            text: "&Copy"
            shortcut: "Ctrl+C"
            onTriggered: snackbar.open("We do actions too!")
        }
        iconName: "content/add"
    }

    Snackbar {
        id: snackbar
    }
}
