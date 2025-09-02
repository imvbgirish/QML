cmake_minimum_required(VERSION 3.16)

project(ListViewTaskMVD VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_add_executable(appListViewTaskMVD
    main.cpp
)

qt_add_qml_module(appListViewTaskMVD
    URI ListViewTaskMVD
    VERSION 1.0
    QML_FILES main.qml
    SOURCES contact.h contact.cpp
    SOURCES contactdatamodel.h contactdatamodel.cpp
    SOURCES phonebook.h phonebook.cpp
    SOURCES callhistory.h callhistory.cpp
    SOURCES whatsapp.h whatsapp.cpp
    QML_FILES HomePage.qml
    QML_FILES
    QML_FILES CustomButton.qml
    QML_FILES PhoneBookView.qml
    QML_FILES PhoneBookHeader.qml
    QML_FILES WhatsappHeader.qml
    QML_FILES WhatsappView.qml
    QML_FILES WhatsappFooter.qml
    QML_FILES CallHistoryHeader.qml
    QML_FILES CallHistoryFooter.qml
    QML_FILES CallHistoryView.qml
)

qt_add_resources(appListViewTaskMVD "resources"
    PREFIX "/"
    FILES
        images/telephone.png
        images/chat.png
        images/social-media.png
        images/group.png
        images/new-message.png
        images/favorite.png
        images/delay.png
        images/notebook-of-contacts.png
        data/personInfo.csv
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appListViewTaskMVD PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appListViewTaskMVD
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appListViewTaskMVD
    PRIVATE Qt6::Quick)
target_link_libraries(appListViewTaskMVD PRIVATE Qt6::Core)
target_link_libraries(appListViewTaskMVD PRIVATE Qt6::Core)
target_link_libraries(appListViewTaskMVD PRIVATE Qt6::Core)

include(GNUInstallDirs)
install(TARGETS appListViewTaskMVD
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
