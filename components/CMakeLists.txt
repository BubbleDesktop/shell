project(bubbleshellprivate)


add_library(bubbleshellprivateplugin SHARED)
target_sources(bubbleshellprivateplugin PRIVATE
    fullscreenoverlay.cpp
    fullscreenoverlay.h
    bubbleshellprivateplugin.cpp
    bubbleshellprivateplugin.h
    startupnotifier.cpp
    startupnotifier.h
    )
target_link_libraries(bubbleshellprivateplugin Qt::Core Qt::Qml Qt::Quick  KF5::WindowSystem KF5::WaylandClient KF5::Service)

install(TARGETS bubbleshellprivateplugin DESTINATION ${KDE_INSTALL_QMLDIR}/io/github/bubbledesktop/private/bubbleshell)

install(FILES qmldir DESTINATION ${KDE_INSTALL_QMLDIR}/io/github/bubbledesktop/private/bubbleshell)

install(DIRECTORY qml DESTINATION ${KDE_INSTALL_QMLDIR}/io/github/bubbledesktop/private/bubbleshell/)


