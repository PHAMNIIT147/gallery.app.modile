TEMPLATE = subdirs

SUBDIRS += \
    gallery-core \
    gallery-desktop\
    gallery-mobile

gallery-mobile.depends = gallery-core
