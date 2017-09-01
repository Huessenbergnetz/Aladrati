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

CoverBackground {
    anchors.fill: parent

    CoverPlaceholder {
        text: "Aladrātī"
        icon.source: Screen.sizeCategory <= Screen.Medium ? "/usr/share/icons/hicolor/86x86/apps/harbour-aladrati.png" : "/usr/share/icons/hicolor/128x128/apps/harbour-aladrati.png"
    }
}

