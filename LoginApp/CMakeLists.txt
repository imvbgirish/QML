cmake_minimum_required(VERSION 3.16)

project(LoginApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
find_package(Qt6 REQUIRED COMPONENTS Widgets)

qt_add_executable(appLoginApp
    main.cpp
)

qt_add_qml_module(appLoginApp
    URI LoginApp
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES Register.qml
    QML_FILES Login.qml
    QML_FILES HomePage.qml
    SOURCES
    SOURCES student.h student.cpp
    SOURCES studentviewmodel.h studentviewmodel.cpp
    QML_FILES StudentsList.qml
    QML_FILES Header.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appLoginApp PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appLoginApp
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appLoginApp
    PRIVATE Qt6::Quick)
target_link_libraries(appLoginApp PRIVATE Qt6::Widgets)

include(GNUInstallDirs)
install(TARGETS appLoginApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
