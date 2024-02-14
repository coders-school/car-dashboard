cmake_minimum_required(VERSION 3.21.1)

set(BUILD_QDS_COMPONENTS ON CACHE BOOL "Build design studio components")

project(CarDashboardApp_UnitTestQml LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

include(${CMAKE_CURRENT_SOURCE_DIR}/../cmake/flags.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/../cmake/files.cmake)

find_package(QT NAMES Qt6 COMPONENTS Core Gui Qml Quick QuickTest)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Gui Qml Quick QuickTest)

qt_policy(SET QTP0001 NEW)

# To build this application you need Qt 6.2.0 or higher
if (Qt6_VERSION VERSION_LESS 6.2.0)
message(FATAL_ERROR "You need Qt 6.2.0 or newer to build the application.")
endif()


add_definitions(-DQUICK_TEST_SOURCE_DIR="${CMAKE_CURRENT_SOURCE_DIR}")

file(GLOB QML_FILES *.qml)
add_custom_target(qmlfiles SOURCES ${QML_FILES})

FILE(GLOB SOURCES_QMLTEST
    "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
)

qt_add_executable(${PROJECT_NAME} 
    ${SOURCES_QMLTEST}
)

# qt_standard_project_setup() requires Qt 6.3 or higher. See https://doc.qt.io/qt-6/qt-standard-project-setup.html for details.
if (${QT_VERSION_MINOR} GREATER_EQUAL 3)
qt6_standard_project_setup()
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
    Qt${QT_VERSION_MAJOR}::QuickTest
)

if (${BUILD_QDS_COMPONENTS})
    
    target_link_libraries(${PROJECT_NAME} PRIVATE
        QuickStudioComponentsplugin
        QuickStudioEffectsplugin
        QuickStudioApplicationplugin
        FlowViewplugin
        QuickStudioLogicHelperplugin
        QuickStudioMultiTextplugin
        QuickStudioEventSimulatorplugin
        QuickStudioEventSystemplugin
    )

    target_compile_definitions(${PROJECT_NAME} PRIVATE
        BULD_QDS_COMPONENTS=true
    )

endif ()

target_link_libraries(${PROJECT_NAME} PRIVATE
    contentplugin
    CarDashboardplugin

)

install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

add_test(
    NAME ${PROJECT_NAME} 
    COMMAND ${PROJECT_NAME} 
)

