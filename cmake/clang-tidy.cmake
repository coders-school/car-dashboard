find_program(CLANG_TIDY clang-tidy)

if(NOT CLANG_TIDY)
    message(AUTHOR_WARNING "clang-tidy was not found, check and fix targets are inaccessible")
else()
    message(STATUS "clang-tidy was found, 'clang-tidy-check' and 'clang-tidy-fix' targets can be used")

    add_custom_target(clang-tidy-check COMMAND ${CLANG_TIDY}
        ${ALL_SOURCES}
        -p=${CMAKE_CURRENT_BINARY_DIR}
        -use-color
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        USES_TERMINAL
        COMMENT "Checking code with Clang-Tidy"
    )

    add_custom_target(clang-tidy-fix COMMAND ${CLANG_TIDY}
        ${ALL_SOURCES}
        -p=${CMAKE_CURRENT_BINARY_DIR}
        -use-color
        -fix-errors
        -format-style=file
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        USES_TERMINAL
        COMMENT "Checking code and applying automatic fixes with Clang-Tidy"
    )

endif()
