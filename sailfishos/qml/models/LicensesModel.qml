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

ListModel {
    id: licensesModel

    ListElement {
        name: "speedtest-cli"
        author: "Matt Martz"
        version: "1.0.6"
        license: "Apache License, Version 2"
        licenseFile: "Apache-2_0.qml"
        website: "https://github.com/sivel/speedtest-cli"
        description: ""
    }

    ListElement {
        name: "BT SFOS Components"
        author: "Matthias Fehring"
        version: "1.0.6"
        license: "Modified BSD License"
        licenseFile: "BSD-3.qml"
        website: "https://github.com/Buschtrommel/BT_SFOS_Components"
        description: ""
    }

    ListElement {
        name: "Aladrati Translations"
        author: "Fuoten Translators"
        license: "Creative Commons Attribution 4.0 International Public License"
        licenseFile: "CC-BY-4_0.qml"
        website: "https://www.transifex.com/buschtrommel/aladrati"
    }

    Component.onCompleted: {
        //% "Command line interface for testing internet bandwidth using speedtest.net."
        licensesModel.get(0).description = qsTrId("aladrati-speedtest-cli-desc")
        //% "BT SFOS Components are a set of QML components for Sailfish OS."
        licensesModel.get(1).description = qsTrId("aladrati-btsfos-comps-desc")
    }
}
