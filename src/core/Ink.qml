/*
 * QML Material - An application framework implementing Material Design.
 *
 * Copyright (C) 2014-2016 Michael Spencer <sonrisesoftware@gmail.com>
 *               2014 Marcin Baszczewski
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import QtQuick 2.4
import Material 0.3
import Material.Extras 0.1

/*!
   \qmltype Ink
   \inqmlmodule Material

   \brief Represents a ripple ink animation used in buttons and many other components.
 */
MouseArea {
    id: view

    clip: true
    z: 2

    property color color: Qt.rgba(0,0,0,0.1)

    property bool circular: false
    property bool centered: false

    property bool focused
    property color focusColor: "transparent"

    property bool showFocus: true

    onPressed: {
        focused=true
    }

    onCanceled: {
        focused=false
    }

    onReleased: {
        focused=false
    }

    Rectangle {
        id: focusBackground

        anchors.fill: parent

        color:Theme.isDarkColor(focusColor) && focusColor.a > 0
               ? Qt.rgba(0,0,0,0.2) : Qt.rgba(0,0,0,0.1)

        opacity:  focused ? 1 : 0

        radius: circular ? 360 :0
        Behavior on opacity {
            NumberAnimation { duration: 500; easing.type: Easing.InOutQuad }
        }
    }
}
