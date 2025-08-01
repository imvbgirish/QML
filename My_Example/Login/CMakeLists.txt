cmake_minimum_required(VERSION 3.16)

project(Login VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appLogin
    main.cpp
    resources.qrc
)

qt_add_qml_module(appLogin
    URI Login
    VERSION 1.0
    QML_FILES main.qml
)

set_target_properties(appLogin PROPERTIES
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appLogin
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appLogin
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
