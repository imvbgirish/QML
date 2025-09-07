cmake_minimum_required(VERSION 3.16)

project(MVDTask VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# --- Find Qt ---
find_package(Qt6 6.2 COMPONENTS Core Quick REQUIRED)

# --- QML module/library ---
qt_add_qml_module(MVDTaskModule
    URI MVDTask
    VERSION 1.0
    QML_FILES
        main.qml
        HomePage.qml
        CustomButton.qml
        PhoneBookView.qml
        PhoneBookHeader.qml
        WhatsappHeader.qml
        WhatsappView.qml
        WhatsappFooter.qml
        CallHistoryHeader.qml
        CallHistoryFooter.qml
        CallHistoryView.qml
        AddContact.qml
        ShowContactInfo.qml
    SOURCES
        contact.cpp contact.h
        contactdatamodel.cpp contactdatamodel.h
        phonebook.cpp phonebook.h
        callhistory.cpp callhistory.h
        whatsapp.cpp whatsapp.h
)

# --- Executable ---
qt_add_executable(MVDTaskApp main.cpp)

# Link executable to QML module and Qt libraries
target_link_libraries(MVDTaskApp PRIVATE MVDTaskModule Qt6::Quick Qt6::Core)

# --- Resources ---
qt_add_resources(MVDTaskApp "resources"
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
        images/call.png
        images/user.png
        images/circle.png
        data/callHistory.csv
        data/phonebook.csv
        data/whatsapp.csv
)

# --- Cross-platform bundle settings ---
set_target_properties(MVDTaskApp PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# --- Install rules ---
include(GNUInstallDirs)
install(TARGETS MVDTaskApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

