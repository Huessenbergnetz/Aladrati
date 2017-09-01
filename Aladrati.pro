TEMPLATE = subdirs

OTHER_FILES += \
    rpm/harbour-aladrati.spec \
    rpm/harbour-aladrati.changes.in

DISTFILES += \
    rpm/harbour-aladrati.yaml \
    rpm/harbour-aladrati.changes

SUBDIRS += \
    sailfishos \
    BT_SFOS_Components
