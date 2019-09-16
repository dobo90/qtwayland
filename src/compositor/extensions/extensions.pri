CONFIG += wayland-scanner
CONFIG += generated_privates

# make sure we install the headers generated by wayland-scanner
private_headers.CONFIG += no_check_exist

WAYLANDSERVERSOURCES += \
    ../extensions/touch-extension.xml \
    ../extensions/qt-key-unstable-v1.xml \
    ../extensions/qt-windowmanager.xml \
    ../3rdparty/protocol/text-input-unstable-v2.xml \
    ../3rdparty/protocol/viewporter.xml \
    ../3rdparty/protocol/scaler.xml \
    ../3rdparty/protocol/xdg-shell-unstable-v6.xml \
    ../3rdparty/protocol/xdg-shell.xml \
    ../3rdparty/protocol/xdg-decoration-unstable-v1.xml \
    ../3rdparty/protocol/xdg-output-unstable-v1.xml \
    ../3rdparty/protocol/ivi-application.xml \
    ../3rdparty/protocol/idle-inhibit-unstable-v1.xml \

HEADERS += \
    extensions/qwlqttouch_p.h \
    extensions/qwlqtkey_p.h \
    extensions/qwaylandshell.h \
    extensions/qwaylandshell_p.h \
    extensions/qwaylandwlshell.h \
    extensions/qwaylandwlshell_p.h \
    extensions/qwaylandtextinput.h \
    extensions/qwaylandtextinput_p.h \
    extensions/qwaylandtextinputmanager.h \
    extensions/qwaylandtextinputmanager_p.h \
    extensions/qwaylandqtwindowmanager.h \
    extensions/qwaylandqtwindowmanager_p.h \
    extensions/qwaylandviewporter.h \
    extensions/qwaylandviewporter_p.h \
    extensions/qwaylandwlscaler.h \
    extensions/qwaylandwlscaler_p.h \
    extensions/qwaylandxdgshellv5.h \
    extensions/qwaylandxdgshellv5_p.h \
    extensions/qwaylandxdgshellv6.h \
    extensions/qwaylandxdgshellv6_p.h \
    extensions/qwaylandxdgshell.h \
    extensions/qwaylandxdgshell_p.h \
    extensions/qwaylandxdgdecorationv1.h \
    extensions/qwaylandxdgdecorationv1_p.h \
    extensions/qwaylandxdgoutputv1.h \
    extensions/qwaylandxdgoutputv1_p.h \
    extensions/qwaylandshellsurface.h \
    extensions/qwaylandidleinhibitv1.h \
    extensions/qwaylandidleinhibitv1_p.h \
    extensions/qwaylandiviapplication.h \
    extensions/qwaylandiviapplication_p.h \
    extensions/qwaylandivisurface.h \
    extensions/qwaylandivisurface_p.h \

SOURCES += \
    extensions/qwlqttouch.cpp \
    extensions/qwlqtkey.cpp \
    extensions/qwaylandshell.cpp \
    extensions/qwaylandwlshell.cpp \
    extensions/qwaylandtextinput.cpp \
    extensions/qwaylandtextinputmanager.cpp \
    extensions/qwaylandqtwindowmanager.cpp \
    extensions/qwaylandviewporter.cpp \
    extensions/qwaylandwlscaler.cpp \
    extensions/qwaylandxdgshellv5.cpp \
    extensions/qwaylandxdgshellv6.cpp \
    extensions/qwaylandxdgshell.cpp \
    extensions/qwaylandxdgdecorationv1.cpp \
    extensions/qwaylandxdgoutputv1.cpp \
    extensions/qwaylandshellsurface.cpp \
    extensions/qwaylandidleinhibitv1.cpp \
    extensions/qwaylandiviapplication.cpp \
    extensions/qwaylandivisurface.cpp \

qtHaveModule(quick) {
    HEADERS += \
        extensions/qwaylandquickshellintegration.h \
        extensions/qwaylandquickshellsurfaceitem.h \
        extensions/qwaylandquickshellsurfaceitem_p.h \
        extensions/qwaylandivisurfaceintegration_p.h \
        extensions/qwaylandwlshellintegration_p.h \
        extensions/qwaylandquickxdgoutputv1.h \
        extensions/qwaylandxdgshellv5integration_p.h \
        extensions/qwaylandxdgshellv6integration_p.h \
        extensions/qwaylandxdgshellintegration_p.h \

    SOURCES += \
        extensions/qwaylandquickshellintegration.cpp \
        extensions/qwaylandquickshellsurfaceitem.cpp \
        extensions/qwaylandivisurfaceintegration.cpp \
        extensions/qwaylandwlshellintegration.cpp \
        extensions/qwaylandquickxdgoutputv1.cpp \
        extensions/qwaylandxdgshellv5integration.cpp \
        extensions/qwaylandxdgshellv6integration.cpp \
        extensions/qwaylandxdgshellintegration.cpp \

    qtConfig(opengl) {
        WAYLANDSERVERSOURCES += \
            ../extensions/qt-texture-sharing-unstable-v1.xml

        HEADERS += \
            extensions/qwltexturesharingextension_p.h

        SOURCES += \
            extensions/qwltexturesharingextension.cpp
    }
}

include ($$PWD/pregenerated/xdg-shell-v5.pri)

INCLUDEPATH += extensions
