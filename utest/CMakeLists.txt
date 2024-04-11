cmake_minimum_required(VERSION 3.14)


set(BUILD_QDS_COMPONENTS ON CACHE BOOL "Build design studio components")

project(CarDashboardApp_UnitTest LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

include(${CMAKE_CURRENT_SOURCE_DIR}/../cmake/flags.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/../cmake/files.cmake)

include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

find_package(QT NAMES Qt6 COMPONENTS Core Gui Qml Quick)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Gui Qml Quick)

qt_policy(SET QTP0001 NEW)

if (Qt6_VERSION VERSION_LESS 6.2.0)
message(FATAL_ERROR "You need Qt 6.2.0 or newer to build the application.")
endif()


set(SOURCES_TEST 
    ${ALL_FILES}
)
LIST(FILTER SOURCES_TEST EXCLUDE
    REGEX ${FILE_MAIN_CPP}
)

qt_add_executable(${PROJECT_NAME}
    ${SOURCES_TEST}
)

if (${QT_VERSION_MINOR} GREATER_EQUAL 3)
qt6_standard_project_setup()
endif()


target_include_directories(${PROJECT_NAME}
PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/../src
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
    gtest gtest_main
)


install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})


add_test(
    NAME ${PROJECT_NAME} 
    COMMAND ${PROJECT_NAME} 
)


