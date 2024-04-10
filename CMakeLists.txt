cmake_minimum_required(VERSION 3.21.1)

set(BUILD_QDS_COMPONENTS ON CACHE BOOL "Build design studio components")

project(CarDashboardApp LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/flags.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/files.cmake)

find_package(QT NAMES Qt6 COMPONENTS Core Gui Qml Quick)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Gui Qml Quick)

qt_policy(SET QTP0001 NEW)

if (Qt6_VERSION VERSION_LESS 6.2.0)
    message(FATAL_ERROR "You need Qt 6.2.0 or newer to build the application.")
endif()

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/clang-format.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/cppcheck.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/clang-tidy.cmake)


qt_add_executable(${CMAKE_PROJECT_NAME} 
    ${MAIN_SOURCES}
    ${MAIN_HEADERS}
)

if (${QT_VERSION_MINOR} GREATER_EQUAL 3)
    qt6_standard_project_setup()
endif()

qt_add_resources(${CMAKE_PROJECT_NAME} "configuration"
    PREFIX "/"
    FILES
        qtquickcontrols2.conf
)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
)

if (${BUILD_QDS_COMPONENTS})
    include(${CMAKE_CURRENT_SOURCE_DIR}/qmlcomponents)
endif ()

include(${CMAKE_CURRENT_SOURCE_DIR}/qmlmodules)

install(TARGETS ${CMAKE_PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)


enable_testing()
add_subdirectory(
    ${CMAKE_CURRENT_SOURCE_DIR}/utest
)
add_subdirectory(
    ${CMAKE_CURRENT_SOURCE_DIR}/utestQml
)
