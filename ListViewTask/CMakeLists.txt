cmake_minimum_required(VERSION 3.16)

project(ListViewTask VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appListViewTask
    main.cpp
)

qt_add_qml_module(appListViewTask
    URI ListViewTask
    VERSION 1.0
    QML_FILES
        main.qml

    SOURCES
        contact.cpp contact.h
        contactdatamodel.cpp contactdatamodel.h
        phonebook.cpp phonebook.h
        callhistory.cpp callhistory.h
        whatsapp.cpp whatsapp.h

    QML_FILES
        customComponents/CustomButton.qml
        customComponents/CustomImage.qml
        customComponents/CustomText.qml
        customComponents/CustomTextfield.qml
        QML_FILES customComponents/CustomPopup.qml
        QML_FILES HomePage.qml
        QML_FILES PhoneBookHeader.qml
        QML_FILES CallHIstoryHeader.qml
        QML_FILES WhatsappHeader.qml
        QML_FILES CallHistoryFooter.qml
        QML_FILES WhatsappFooter.qml
        QML_FILES PhoneBookView.qml
)


qt_add_resources(appListViewTask "resources"
    PREFIX "/"
    FILES
        images/call.png
        images/chat.png
        images/circle.png
        images/delay.png
        images/favorite.png
        images/group.png
        images/new-message.png
        images/notebook-of-contacts.png
        images/social-media.png
        images/telephone.png
        images/user.png
        images/me.jpeg
        data/callHistory.csv
        data/phonebook.csv
        data/whatsapp.csv
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appListViewTask PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appListViewTask
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appListViewTask
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appListViewTask
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
