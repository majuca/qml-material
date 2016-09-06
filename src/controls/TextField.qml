/*
 * QML Material - An application framework implementing Material Design.
 *
 * Copyright (C) 2016 Michael Spencer <sonrisesoftware@gmail.com>
 *               2014 Bogdan Cuza <bogdan.cuza@hotmail.com>
 *               2015 Ricardo Vieira <ricardo.vieira@tecnico.ulisboa.pt>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.1

/*!
   \qmltype TextField
   \inqmlmodule Material

   \brief A single-line text input control.
 */
Controls.TextField {
    id: textField
    property color color: Material.accent
    property color errorColor: Material.color(Material.Red)
    property string helperText
    property bool floatingLabel: false
    property bool hasError: characterLimit && length > characterLimit
    property int characterLimit : 0

    font {
        family: echoMode == TextInput.Password ? "Default" : "Roboto"

    }

    Label {
        id: fieldPlaceholder
        anchors.verticalCenter: parent.verticalCenter
        text: placeholderText
        font.pixelSize: parent.font.pixelSize
        visible: textField.text.length > 0 && floatingLabel
        anchors.topMargin: -4
        color: parent.hasError ? parent.errorColor : parent.color

        states: [
            State {
                name: "floating"
                when: textField.text.length > 0 && floatingLabel
                AnchorChanges {
                    target: fieldPlaceholder
                    anchors.verticalCenter: undefined
                    anchors.top: parent.top
                }
                PropertyChanges {
                    target: fieldPlaceholder
                    font.pixelSize: 12
                }
            }
        ]

        transitions: [
            Transition {
                id: floatingTransition
                enabled: false
                AnchorAnimation {
                    duration: 200
                }
                NumberAnimation {
                    duration: 200
                    property: "font.pixelSize"
                }
            }
        ]

        Component.onCompleted: floatingTransition.enabled = true
    }

    RowLayout {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            bottomMargin: -10
        }

        Label {
            id: helperTextLabel
            visible: textField.helperText
            text: textField.helperText
            font.pixelSize: 12
            color: textField.hasError ? textField.errorColor : Material.foreground

            Behavior on color {
                ColorAnimation { duration: 200 }
            }
        }

        Label {
            id: charLimitLabel
            Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
            visible: textField.characterLimit
            text: textField.text.length + " / " + textField.characterLimit
            font.pixelSize: 12
            color: textField.hasError ? textField.errorColor : textField.color
            horizontalAlignment: Text.AlignLeft

            Behavior on color {
                ColorAnimation { duration: 200 }
            }
        }
    }

}
