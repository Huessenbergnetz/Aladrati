/*
    Aladrati - An internet connection speed tester
    Copyright (C) 2017 Matthias Fehring <kontakt@buschmann23.de>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.2
import Sailfish.Silica 1.0


Page {
    id: mainPage

    allowedOrientations: Orientation.All

    SilicaListView {
        id: testListView
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                //% "About"
                text: qsTrId("aladrati-about")
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }

            MenuItem {
                //% "Settings"
                text: qsTrId("aladrati-settings")
            }

            MenuItem {
                //% "New test"
                text: qsTrId("aladrati-new-test")
            }
        }

        VerticalScrollDecorator {
            flickable: testListView
            page: mainPage
        }

        header: PageHeader {
            title: "Aladrātī"
            page: mainPage
        }

        ViewPlaceholder {
            enabled: testListView.count === 0
            //% "No recorded tests"
            text: qsTrId("aladrati-no-recorded-tests")
            //% "Use the pull down menu to start a new internet connection speed test"
            hintText: qsTrId("aladrati-no-recorded-tests-hint")
        }
    }
}

