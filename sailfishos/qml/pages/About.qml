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
import harbour.aladrati.btsc 1.0
import "../models"

AboutPage {
    //% "About"
    pageTitle: qsTrId("aladrati-about")

    appTitle: "Aladrātī"
    //% "Internet connection speed test application that uses the servers provided by speedtest.net."
    appDescription: qsTrId("aladrati-about-desc")
    appHomepage: "https://www.buschmann23.de/entwicklung/anwendungen/aladrati"
    appCopyrightYear: "2017"
    appCopyrightHolder: "Matthias Fehring"
    appLicense:"GNU General Pulic License, Version 3"
    appLicenseFile: "GPLv3.qml"

    changelogModel: ChangelogModel {}
    bugTrackerBaseUrl: "https://github.com/Huessenbergnetz/Aladrati/issues/"

    contributorsModel: ContributorsModel {}
    contributorsAvatarBasePath: "/usr/share/harbour-aladrati/images/contributors"
    contributorsPlaceholderPath: "/usr/share/harbour-aladrati/images/contributors/placeholder.png"

    contactCompany: "Hüssenbergnetz"
    contactName: "Matthias Fehrint"
    contactStreet: "Zum Südholz"
    contactHouseNo: "8"
    contactZIP: "34439"
    contactCity: "Willebadessen-Eissen"
    //% "Germany"
    contactCountry: qsTrId("aladrati-about-germany")
    contactEmail: "kontakt@buschmann23.de"
    contactWebsite: "www.buschmann23.de"

    bugUrl: "https://github.com/Huessenbergnetz/Aladrati/issues"
    translateUrl: "https://www.transifex.com/buschtrommel/aladrati"

    licensesModel: LicensesModel {}
}
